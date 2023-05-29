import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:tampil_deret_teguh/config/config.dart';
import 'package:tampil_deret_teguh/routes/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context , child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: appTitle,
            theme: appTheme,
            initialRoute: Routes.root,
            getPages: routes,
          );
        },
      );
  }
}
  