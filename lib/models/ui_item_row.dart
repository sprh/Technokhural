import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technokhural_flutter_demo/models/ui_item.dart';

part 'ui_item_row.g.dart';

@JsonSerializable()
class UIItemRow extends UIItem {
  final List<UIItem> items;

  const UIItemRow({required this.items}) : super(type: UIItemType.row);

  factory UIItemRow.fromJson(Map<String, dynamic> json) =>
      _$UIItemRowFromJson(json);
}
