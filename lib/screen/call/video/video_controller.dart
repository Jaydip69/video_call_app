import 'dart:math';
import 'package:flick_video_player_custom/flick_video_player_custom.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../../gender_screen/genderpage_widget.dart';

class VideoCallController extends GetxController {
  late VideoPlayerController controller;
  late Future<void> initializeVideoPlayerFuture;
  var temp = Random();
  late FlickManager flickManager1;

  @override
  void onInit() {
    flickManager1 = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
            "https://appswill.com/app_assets/umeet/girls/${temp.nextInt(65)}.mp4"),
        videoPlayerOptions: VideoPlayerOptions(
          allowBackgroundPlayback: false,
        ),
      ),
      onVideoEnd: () {
        Get.back();
      },
    );
    super.onInit();
    update(["video_demo"]);
  }

  @override
  void onClose() {
    flickManager1.dispose();
    super.onClose();
    Get.off(const ConnectionScreen());
  }
}
