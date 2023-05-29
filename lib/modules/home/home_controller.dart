import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:tampil_deret_teguh/modules/home/home.dart';

class HomeController extends GetxController {

  final HomeService _service;

  HomeController(this._service);

  GlobalKey<FormFieldState> inputTxtNKey = GlobalKey<FormFieldState>();
  var inputTxtN = TextEditingController().obs;
  var result = "".obs;

  void deret1() {
    String deretResult = '';
    print("test"+inputTxtN.value.text.toString());
    for (int i = 1; i <= int.parse(inputTxtN.value.text.toString()); i++) {
      deretResult += i.toString() +" ";
    }
    result.value = deretResult;
  }

  void deret2() {
    String deretResult = '';
    int n = int.parse(inputTxtN.value.text.toString());

    for (int i = 1; i <= n; i++) {
      deretResult += i.toString() + " ";
    }

    for (int i = n - 1; i >= 1; i--) {
      deretResult += i.toString() + " ";
    }

    result.value = deretResult;
  }

  void deret3() {
    String deretResult = '';
    int n = int.parse(inputTxtN.value.text.toString());
    int start = 10;
    int diff = 11;

    for (int i = 0; i < n; i++) {
      deretResult += (start + i * diff).toString() + ' ';
    }

    result.value = deretResult;
  }

  void deret4() {
    String deretResult = '';
    int n = int.parse(inputTxtN.value.text.toString());
    for (int i = 1; i <= n; i++) {
      if (i % 5 == 0) {
        deretResult += 'LIMA ';
      } else if (i % 7 == 0) {
        deretResult += 'TUJUH ';
      } else {
        deretResult += i.toString() +" ";
      }
    }

    result.value = deretResult;
  }

}