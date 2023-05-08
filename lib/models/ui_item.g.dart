// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIItem _$UIItemFromJson(Map<String, dynamic> json) => UIItem(
      type: $enumDecode(_$UIItemTypeEnumMap, json['type']),
    );

const _$UIItemTypeEnumMap = {
  UIItemType.panel: 'panel',
  UIItemType.text: 'text',
  UIItemType.divider: 'divider',
  UIItemType.line: 'line',
  UIItemType.button: 'button',
  UIItemType.icon: 'icon',
  UIItemType.row: 'row',
  UIItemType.column: 'column',
};
