
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  // Screen Width
  double get width => MediaQuery.sizeOf(this).width;

  // Screen Height
  double get height => MediaQuery.sizeOf(this).height;
}
