import 'package:get/get.dart';

import 'package:tampil_deret_teguh/modules/home/home.dart';
import 'package:tampil_deret_teguh/screens/home.dart';

class Routes {
  static const String root = '/';
}

final List<GetPage> routes = [
  GetPage(name: Routes.root, page: () => Home(Get.find()), binding: HomeBindings())
];