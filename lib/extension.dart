import 'package:flutter/material.dart';

extension ScreenSize on BuildContext {
  get screenWidth => MediaQuery.sizeOf(this).width;
  get screenHeight => MediaQuery.sizeOf(this).height;
}
