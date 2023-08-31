import 'package:flick_video_player_custom/flick_video_player_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videocall/screen/call/video/video_controller.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VideoCallController());
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: GetBuilder<VideoCallController>(
          id: "video_demo",
          builder: (controller) {
            return Stack(
              children: [
                FlickVideoPlayer(
                  flickManager: controller.flickManager1,
                  wakelockEnabled: false,
                  wakelockEnabledFullscreen: false,

                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
