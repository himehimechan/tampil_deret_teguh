import 'package:get/get.dart';

import 'package:tampil_deret_teguh/modules/home/home.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(HomeService()));
  }
}