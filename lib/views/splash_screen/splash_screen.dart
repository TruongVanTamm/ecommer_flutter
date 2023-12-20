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
    Future.delayed(const Duration(seconds: 30), () {
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
      backgroundColor: redColor,
      body: Center(
          child: Column(
        children: <Widget>[
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg, width: 200)),
          20.heightBox,
          applogoWidget(),
          10.heightBox,
          appname.text.fontFamily(bold).size(22).make(),
          5.heightBox,
          appversion.text.size(14).make(),
          const Spacer(),
          credits.text.fontFamily(semibold).make(),
          // Text(credits,
          //     style: TextStyle(color: Colors.white, fontFamily: semibold))
          30.heightBox,
        ],
      )),
    );
  }
}
