import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technokhural_flutter_demo/models/ui_item.dart';

part 'ui_item_text.g.dart';

@JsonSerializable()
class UIItemText extends UIItem {
  final String text;
  final int size;
  final bool bold;
  final UIColor color;

  const UIItemText({
    required this.text,
    required this.size,
    this.bold = false,
    this.color = UIColor.black,
  }) : super(type: UIItemType.text);

  factory UIItemText.fromJson(Map<String, dynamic> json) =>
      _$UIItemTextFromJson(json);
}
