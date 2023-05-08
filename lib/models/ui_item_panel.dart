import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technokhural_flutter_demo/models/ui_item.dart';

part 'ui_item_panel.g.dart';

@JsonSerializable()
class UIItemPanel extends UIItem {
  final UIItem item;
  final double borderRadius;
  final UIColor color;

  const UIItemPanel({
    required this.item,
    this.borderRadius = 0,
    this.color = UIColor.white,
  }) : super(type: UIItemType.panel);

  factory UIItemPanel.fromJson(Map<String, dynamic> json) =>
      _$UIItemPanelFromJson(json);
}
