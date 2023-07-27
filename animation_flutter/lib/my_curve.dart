import 'dart:math';

import 'package:flutter/widgets.dart';

class MyCurve extends Curve{
  final double count;

  const MyCurve({this.count = 1});
  @override
  double transformInternal(double t) {
    return sin(count * 2 * pi * t) * 0.5 + 0.5;
  }
}