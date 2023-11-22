import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //memanggil data email dari data storage
    final box = GetStorage();

    return Scaffold(
      body: Center(
        child: (box.read('email') != null)
            ? Text('Welcome ${box.read('email')}')
            : Text('Welcome'),
      ),
    );
  }
}
