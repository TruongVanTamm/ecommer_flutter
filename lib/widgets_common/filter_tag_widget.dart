import 'package:ecommer_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

Widget filterTag({onPress, required String? title}) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: grayScale,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onPressed: onPress,
      child: title?.text.black.fontFamily(regular).size(16).make(),
    ),
  );
}
