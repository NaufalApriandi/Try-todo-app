import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:try_to_do_app/home_screen.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  final box = GetStorage();

  login() {
    if (emailC.text.isNotEmpty && passwordC.text.isNotEmpty) {
      box.write('email', emailC.text);
      box.write('pass', passwordC.text);

      //Arahkan ke home
      Get.offAll(HomeScreen());

      //tampilan snackbar jika login berhasil
      Get.snackbar('Success', 'Login Success');
    } else {
      //tampilan snackbar jika login gagal
      Get.snackbar('Failed', 'Failed Login');
    }
  }
}
