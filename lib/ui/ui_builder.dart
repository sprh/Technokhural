import 'package:flutter/material.dart';
import 'package:technokhural_flutter_demo/models/ui_item_button.dart';
import 'package:technokhural_flutter_demo/models/ui_item_column.dart';
import 'package:technokhural_flutter_demo/models/ui_item_divider.dart';
import 'package:technokhural_flutter_demo/models/ui_item_icon.dart';
import 'package:technokhural_flutter_demo/models/ui_item_line.dart';
import 'package:technokhural_flutter_demo/models/ui_item_row.dart';
import 'package:technokhural_flutter_demo/models/ui_item_text.dart';
import 'package:technokhural_flutter_demo/ui/utils/ui_color_x.dart';

import '../models/ui_item.dart';
import '../models/ui_item_panel.dart';

class UIBuilder extends StatelessWidget {
  final UIItem ui;
  const UIBuilder(this.ui, {super.key});

  @override
  Widget build(BuildContext context) {
    switch (ui.type) {
      case UIItemType.panel:
        final panel = ui as UIItemPanel;
        return Container(
          decoration: BoxDecoration(
            color: panel.color.toColor,
            borderRadius: BorderRadius.circular(panel.borderRadius),
          ),
          child: UIBuilder(panel.item),
        );
      case UIItemType.text:
        final text = ui as UIItemText;
        return Text(
          text.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: text.size * 1.0,
            fontWeight: text.bold ? FontWeight.bold : FontWeight.normal,
            color: text.color.toColor,
          ),
        );
      case UIItemType.divider:
        final divider = ui as UIItemDivider;
        return SizedBox(
          width: divider.width,
          height: divider.height,
        );
      case UIItemType.line:
        final line = ui as UIItemLine;
        return Container(
          width: line.width,
          height: line.height,
          color: line.color.toColor,
        );
      case UIItemType.button:
        final button = ui as UIItemButton;
        Widget? child;
        if (button.text != null) {
          child = UIBuilder(button.text!);
        } else if (button.icon != null) {
          child = UIBuilder(button.icon!);
        }

        return Container(
          width: button.width,
          height: button.height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: button.backgroundColor.toColor,
            borderRadius: BorderRadius.circular(button.borderRadius),
            border: Border.all(color: Colors.black26),
          ),
          child: child,
        );
      case UIItemType.icon:
        final icon = ui as UIItemIcon;
        break;
      case UIItemType.row:
        final row = ui as UIItemRow;
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: row.items.map((e) => UIBuilder(e)).toList(),
        );
      case UIItemType.column:
        final column = ui as UIItemColumn;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: column.items.map((e) => UIBuilder(e)).toList(),
        );
    }
    return const SizedBox.shrink();
  }
}
