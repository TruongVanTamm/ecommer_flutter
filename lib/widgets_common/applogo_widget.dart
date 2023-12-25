import 'package:ecommer_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

Widget applogoWidget({required String logo}) {
  return Image.asset(logo).box.size(257, 133).make();
}
