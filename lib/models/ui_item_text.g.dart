// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_item_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIItemText _$UIItemTextFromJson(Map<String, dynamic> json) => UIItemText(
      text: json['text'] as String,
      size: json['size'] as int,
      bold: json['bold'] as bool? ?? false,
      color:
          $enumDecodeNullable(_$UIColorEnumMap, json['color']) ?? UIColor.black,
    );

const _$UIColorEnumMap = {
  UIColor.white: 'white',
  UIColor.black: 'black',
  UIColor.grey: 'grey',
  UIColor.greyDark: 'greyDark',
  UIColor.yellow: 'yellow',
};
