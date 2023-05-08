import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technokhural_flutter_demo/models/ui_item.dart';
import 'package:technokhural_flutter_demo/models/ui_item_icon.dart';
import 'package:technokhural_flutter_demo/models/ui_item_text.dart';

part 'ui_item_button.g.dart';

@JsonSerializable()
class UIItemButton extends UIItem {
  final double width;
  final double height;
  final UIColor backgroundColor;
  final double borderRadius;
  final UIItemIcon? icon;
  final UIItemText? text;

  const UIItemButton({
    required this.width,
    required this.height,
    required this.backgroundColor,
    this.borderRadius = 0,
    this.icon,
    this.text,
  }) : super(type: UIItemType.button);

  factory UIItemButton.fromJson(Map<String, dynamic> json) =>
      _$UIItemButtonFromJson(json);
}
