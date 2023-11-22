import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:try_to_do_app/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //definisikan controller
    final controller = Get.put(LoginController());

    return Scaffold(
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Welcome to TODO App'),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: controller.emailC,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Your Email:'),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: controller.passwordC,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Your Password:'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.login();
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
