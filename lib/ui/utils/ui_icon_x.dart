import 'package:flutter/material.dart';
import 'package:technokhural_flutter_demo/models/ui_item_icon.dart';

extension IconX on UIIcon {
  IconData get icon {
    switch (this) {
      case UIIcon.done:
        return Icons.done;
      case UIIcon.restaurant:
        return Icons.restaurant;
      case UIIcon.delivery:
        return Icons.delivery_dining;
      case UIIcon.flag:
        return Icons.flag;
    }
  }
}
