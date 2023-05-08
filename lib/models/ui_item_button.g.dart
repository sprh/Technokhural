// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_item_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIItemButton _$UIItemButtonFromJson(Map<String, dynamic> json) => UIItemButton(
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      backgroundColor: $enumDecode(_$UIColorEnumMap, json['backgroundColor']),
      borderRadius: (json['borderRadius'] as num?)?.toDouble() ?? 0,
      icon: json['icon'] == null
          ? null
          : UIItemIcon.fromJson(json['icon'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : UIItemText.fromJson(json['text'] as Map<String, dynamic>),
    );

const _$UIColorEnumMap = {
  UIColor.white: 'white',
  UIColor.black: 'black',
  UIColor.grey: 'grey',
  UIColor.greyDark: 'greyDark',
  UIColor.yellow: 'yellow',
};
