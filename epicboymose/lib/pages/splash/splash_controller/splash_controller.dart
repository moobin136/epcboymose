import 'package:get/get.dart';
// import 'package:get/state_manager.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    goTotUserpage();
    super.onInit();
  }

  void goTotUserpage() {
    Future.delayed(Duration(seconds: 2), () {
      Get.offNamed('/user');
    });
  }
}
