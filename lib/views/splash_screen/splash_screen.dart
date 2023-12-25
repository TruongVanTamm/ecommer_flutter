import 'package:ecommer_flutter/constants/constants.dart';
import 'package:ecommer_flutter/views/auth_screen/login_screen.dart';
import 'package:ecommer_flutter/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Center(child: applogoWidget(logo: icAppLogoWhite)),
    );
  }
}
