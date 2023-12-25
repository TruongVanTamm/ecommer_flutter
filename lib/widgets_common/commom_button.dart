import 'package:ecommer_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

Widget commomButton({onPress, backgroundColor = primaryColor, Widget? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    onPressed: onPress,
    child: title,
  );
}
