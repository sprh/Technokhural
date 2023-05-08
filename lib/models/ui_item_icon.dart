import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technokhural_flutter_demo/models/ui_item.dart';

part 'ui_item_icon.g.dart';

@JsonSerializable()
class UIItemIcon extends UIItem {
  final UIIcon icon;
  final UIColor color;

  const UIItemIcon({
    required this.icon,
    required this.color,
  }) : super(type: UIItemType.icon);

  factory UIItemIcon.fromJson(Map<String, dynamic> json) =>
      _$UIItemIconFromJson(json);
}

enum UIIcon {
  done,
  restaurant,
  delivery,
  flag,
}
