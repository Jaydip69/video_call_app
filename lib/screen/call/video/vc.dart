import 'dart:math';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: depend_on_referenced_packages
import 'package:video_player/video_player.dart';

class VideoApp extends StatefulWidget {
  const VideoApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  var temp = Random();
  late VideoPlayerController _controller;
  List<CameraDescription>? cameras;
  CameraController? controller;

  @override
  void initState() {
    loadCamera();
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
          "https://appswill.com/app_assets/umeet/girls/${temp.nextInt(65)}.mp4"),
    )..initialize().then((_) {});
    //onVideoEnd();
  }

  loadCamera() async {
    cameras = await availableCameras();
    if (cameras != null) {
      controller = CameraController(cameras![0], ResolutionPreset.max);
      //cameras[0] = first camera, change to 1 to another camera
      controller!.initialize().then((_) {
        if (!mounted) {
          return;
        }
      });
    }
  }
  onVideoEnd() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(),
            ),
            Positioned(
              bottom: 5,
              right: 5,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                },
                child: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
              ),
            ),
            Positioned(
              top: 15,
              right: 11,
              child: SizedBox(
                  height: 150,
                  width: 100,
                  child: controller == null
                      ? const Center(child: Text("Loading Camera..."))
                      : !controller!.value.isInitialized
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : CameraPreview(controller!),),

            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
