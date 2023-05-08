import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technokhural_flutter_demo/models/ui_item.dart';

part 'ui_item_divider.g.dart';

@JsonSerializable()
class UIItemDivider extends UIItem {
  final double? height;
  final double? width;

  const UIItemDivider({
    this.height,
    this.width,
  }) : super(type: UIItemType.divider);

  factory UIItemDivider.fromJson(Map<String, dynamic> json) =>
      _$UIItemDividerFromJson(json);
}
