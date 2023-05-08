import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technokhural_flutter_demo/models/ui_item.dart';

part 'ui_item_line.g.dart';

@JsonSerializable()
class UIItemLine extends UIItem {
  final double height;
  final UIColor color;
  final double? width;

  const UIItemLine({
    required this.height,
    this.color = UIColor.black,
    this.width,
  }) : super(type: UIItemType.line);

  factory UIItemLine.fromJson(Map<String, dynamic> json) =>
      _$UIItemLineFromJson(json);
}
