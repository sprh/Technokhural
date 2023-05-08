// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_item_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIItemLine _$UIItemLineFromJson(Map<String, dynamic> json) => UIItemLine(
      height: (json['height'] as num).toDouble(),
      color:
          $enumDecodeNullable(_$UIColorEnumMap, json['color']) ?? UIColor.black,
      width: (json['width'] as num?)?.toDouble(),
    );

const _$UIColorEnumMap = {
  UIColor.white: 'white',
  UIColor.black: 'black',
  UIColor.grey: 'grey',
  UIColor.greyDark: 'greyDark',
  UIColor.yellow: 'yellow',
};
