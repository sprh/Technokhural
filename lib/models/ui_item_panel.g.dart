// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_item_panel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIItemPanel _$UIItemPanelFromJson(Map<String, dynamic> json) => UIItemPanel(
      item: UIItem.fromJson(json['item'] as Map<String, dynamic>),
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 0,
      color:
          $enumDecodeNullable(_$UIColorEnumMap, json['color']) ?? UIColor.white,
    );

const _$UIColorEnumMap = {
  UIColor.white: 'white',
  UIColor.black: 'black',
  UIColor.grey: 'grey',
  UIColor.greyDark: 'greyDark',
  UIColor.yellow: 'yellow',
};
