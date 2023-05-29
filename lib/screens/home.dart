import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'package:tampil_deret_teguh/modules/home/home.dart';
import 'package:tampil_deret_teguh/widgets/button.dart';
import 'package:tampil_deret_teguh/widgets/inputFieldPrefix.dart';

class Home extends StatelessWidget {
  final HomeController home;

  const Home(this.home, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: ListView(
              children: [
                Gap(10.h),
                Center(
                  child: InputFieldPrefix(labelText: "Input N",
                      key: home.inputTxtNKey,
                      editingController: home.inputTxtN.value,
                      fillColor: Color(0xffffffff),
                      textSize: 12.sp, textColor: Color(0xff000000), fontWeight: FontWeight.w400,
                      isUnderlinedBorder: false,
                      hintColor: Color(0xffcecccc), validate: (text) {
                        return null;
                      }),
                ),
                Gap(10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded( flex: 1,
                        child: Button(text: '1', color: Color(0xff3873AD),
                            onPress: (){
                              home.deret1();
                            }, height: 59.w,
                            radius: 24, textSize: 24.sp, textColor: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            borderColor: Color(0xff3873AD))),
                    Gap(10.w),
                    Expanded( flex: 1,
                        child: Button(text: '2', color: Color(0xff3873AD),
                            onPress: ()=>home.deret2(), height: 59.w,
                            radius: 24, textSize: 24.sp, textColor: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            borderColor: Color(0xff3873AD))),
                  ],
                ),
                Gap(10.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded( flex: 1,
                        child: Button(text: '3', color: Color(0xff3873AD),
                            onPress: ()=>home.deret3(), height: 59.w,
                            radius: 24, textSize: 24.sp, textColor: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            borderColor: Color(0xff3873AD))),
                    Gap(10.w),
                    Expanded( flex: 1,
                        child: Button(text: '4', color: Color(0xff3873AD),
                            onPress: ()=>home.deret4(), height: 59.w,
                            radius: 24, textSize: 24.sp, textColor: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            borderColor: Color(0xff3873AD))),
                  ],
                ),
                Gap(10.h),
                Text("Result"),
                Gap(10.h),
                Text(home.result.value)
              ],
            ),
          );
        },
      ),
    );
  }
}