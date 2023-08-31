import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';

import '../gender_screen/gender_screen.dart';

class LiveController extends GetxController {
  onTap2() {
    Get.to(const GenderScreen());
  }

  onTap3() {}

  Future<void> share() async {
    await FlutterShare.share(
      title: 'In-ShortApp',
      linkUrl: 'app link attached',
    );
  }
}
