import 'package:flutter/material.dart';
import 'package:technokhural_flutter_demo/models/ui_item_button.dart';
import 'package:technokhural_flutter_demo/models/ui_item_column.dart';
import 'package:technokhural_flutter_demo/models/ui_item_divider.dart';
import 'package:technokhural_flutter_demo/models/ui_item_icon.dart';
import 'package:technokhural_flutter_demo/models/ui_item_line.dart';
import 'package:technokhural_flutter_demo/models/ui_item_row.dart';
import 'package:technokhural_flutter_demo/models/ui_item_text.dart';

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
        break;
      case UIItemType.text:
        final text = ui as UIItemText;
        break;
      case UIItemType.divider:
        final divider = ui as UIItemDivider;
        break;
      case UIItemType.line:
        final line = ui as UIItemLine;
        break;
      case UIItemType.button:
        final button = ui as UIItemButton;
        break;
      case UIItemType.icon:
        final icon = ui as UIItemIcon;
        break;
      case UIItemType.row:
        final row = ui as UIItemRow;
        break;
      case UIItemType.column:
        final column = ui as UIItemColumn;
        break;
    }
    return const SizedBox.shrink();
  }
}
