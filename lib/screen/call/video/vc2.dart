// import 'dart:math';
//
// import 'package:get/get.dart';
// import 'package:video_player/video_player.dart';
//
// class VcController extends GetxController {
//   var temp = Random();
//    late  VideoPlayerController controller;
//   @override
//   void onInit(){
//     super.onInit();
//     goToVcPage();
//   }
//   goToVcPage() {
//     controller = VideoPlayerController.networkUrl(Uri.parse(
//         "https://appswill.com/app_assets/umeet/girls/${temp.nextInt(65)}.mp4"))
//       ..initialize().then((_) {});
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:prank_call/vc.dart';
//
// class VC extends StatelessWidget {
//   const VC({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const VideoApp()));
//             },
//             child: const Text('go to vc page')),
//       ),
//     );
//   }
// }

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CameraDescription>? cameras; //list out the camera available
  CameraController? controller; //controller for camera
//  File? image; //for captured image

  @override
  void initState() {
    loadCamera();
    super.initState();
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
        setState(() {});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Capture Image from Camera"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          SizedBox(
              height: 700,
              width: double.infinity,
              child: controller == null
                  ? const Center(child: Text("Loading Camera..."))
                  : !controller!.value.isInitialized
                  ? const Center(
                child: CircularProgressIndicator(),
              )
                  : CameraPreview(controller!)),
          // ElevatedButton.icon(
          //   //image capture button
          //   onPressed: () async {
          //     try {
          //       if (controller != null) {
          //         //check if contrller is not null
          //         if (controller!.value.isInitialized) {
          //           //check if controller is initialized
          //           image = (await controller!.takePicture()) as File?; //capture image
          //           setState(() {
          //             //update UI
          //           });
          //         }
          //       }
          //     } catch (e) {
          //       if (kDebugMode) {
          //         print(e);
          //       } //show error
          //     }
          //   },
          //   icon: const Icon(Icons.camera),
          //   label: const Text("Capture"),
          // ),
          // Container(
          //   //show captured image
          //   padding: const EdgeInsets.all(30),
          //   child: image == null
          //       ? const Text("No image captured")
          //       : Image.file(
          //     File(image!.path),
          //     height: 300,
          //   ),
          //   //display captured image
          // ),
        ],
      ),
    );
  }
}
