import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:moments_capture/constants.dart';
import 'package:moments_capture/controllers/auth_controller.dart';
import 'package:moments_capture/views/screens/auth/login_screen.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
).then((value) {
  Get.put(AuthController());
});
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moments Capture',
      theme: ThemeData.dark().copyWith(
       scaffoldBackgroundColor: backgroundColor,
      ),
      home: LoginScreen(),
    );
  }
}
