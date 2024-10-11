import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sixlogicsget/controllers/name_num_controller.dart';

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  MyBindings bindings = MyBindings();
  await bindings.dependencies();
}

class MyBindings implements Bindings {
  @override
  Future<void> dependencies() async {
    Get.lazyPut(() => NameNumberController(), fenix: true);
  }
}
