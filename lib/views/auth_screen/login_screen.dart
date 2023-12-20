import 'package:ecommer_flutter/constants/constants.dart';
import 'package:ecommer_flutter/widgets_common/applogo_widget.dart';
import 'package:ecommer_flutter/widgets_common/bg_widget.dart';
import 'package:ecommer_flutter/widgets_common/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
            child: Column(
          children: <Widget>[
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            'Login in to $appname'.text.fontFamily(bold).size(18).make(),
            10.heightBox,
            Column(
              children: <Widget>[
                customTextField(title: email, hint: emailHint),
                5.heightBox,
                customTextField(title: password, hint: passwordHint)
              ],
            ).box.white.rounded.p16.width(context.screenWidth - 70).make()
          ],
        )),
      ),
    ));
  }
}
