import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technokhural_flutter_demo/models/ui_item_button.dart';
import 'package:technokhural_flutter_demo/models/ui_item_column.dart';
import 'package:technokhural_flutter_demo/models/ui_item_divider.dart';
import 'package:technokhural_flutter_demo/models/ui_item_icon.dart';
import 'package:technokhural_flutter_demo/models/ui_item_line.dart';
import 'package:technokhural_flutter_demo/models/ui_item_panel.dart';
import 'package:technokhural_flutter_demo/models/ui_item_row.dart';
import 'package:technokhural_flutter_demo/models/ui_item_text.dart';

part 'ui_item.g.dart';

@JsonSerializable()
class UIItem {
  final UIItemType type;

  const UIItem({required this.type});

  factory UIItem.fromJson(Map<String, dynamic> json) {
    final type = _$UIItemFromJson(json).type;
    switch (type) {
      case UIItemType.panel:
        return UIItemPanel.fromJson(json);
      case UIItemType.text:
        return UIItemText.fromJson(json);
      case UIItemType.divider:
        return UIItemDivider.fromJson(json);
      case UIItemType.line:
        return UIItemLine.fromJson(json);
      case UIItemType.button:
        return UIItemButton.fromJson(json);
      case UIItemType.icon:
        return UIItemIcon.fromJson(json);
      case UIItemType.row:
        return UIItemRow.fromJson(json);
      case UIItemType.column:
        return UIItemColumn.fromJson(json);
    }
  }
}

enum UIColor {
  white,
  black,
  grey,
  greyDark,
  yellow,
}

enum UIItemType {
  panel,
  text,
  divider,
  line,
  button,
  icon,
  row,
  column,
}
