import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technokhural_flutter_demo/models/ui_item.dart';

part 'ui_item_column.g.dart';

@JsonSerializable()
class UIItemColumn extends UIItem {
  final List<UIItem> items;

  const UIItemColumn({required this.items}) : super(type: UIItemType.column);

  factory UIItemColumn.fromJson(Map<String, dynamic> json) =>
      _$UIItemColumnFromJson(json);
}
