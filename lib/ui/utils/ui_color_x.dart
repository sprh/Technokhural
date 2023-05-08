import 'package:flutter/material.dart';
import 'package:technokhural_flutter_demo/models/ui_item.dart';

extension UIColorX on UIColor {
  Color get toColor {
    switch (this) {
      case UIColor.white:
        return Colors.white;
      case UIColor.black:
        return Colors.black;
      case UIColor.grey:
        return Colors.black12;
      case UIColor.greyDark:
        return Colors.black54;
      case UIColor.yellow:
        return Colors.yellow;
    }
  }
}
