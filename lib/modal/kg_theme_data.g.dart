// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kg_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KgThemeData _$$_KgThemeDataFromJson(Map<String, dynamic> json) =>
    _$_KgThemeData(
      isDark: json['isDark'] as bool? ?? false,
      innerGapValue: (json['innerGapValue'] as num?)?.toDouble() ?? 8,
      borderRadiusValue: (json['borderRadiusValue'] as num?)?.toDouble() ?? 8,
      paddingValue: (json['paddingValue'] as num?)?.toDouble() ?? 10,
      fontFamily: json['fontFamily'] as String? ?? 'Barlow',
      primaryValue: json['primaryValue'] as int? ?? 0xFFFFC211,
      primaryDarkValue: json['primaryDarkValue'] as int? ?? 0xFFFFDF81,
      primaryContainerValue:
          json['primaryContainerValue'] as int? ?? 0xFFFFDF81,
      primaryContainerDarkValue:
          json['primaryContainerDarkValue'] as int? ?? 0xFFFFEAAB,
      secondaryValue: json['secondaryValue'] as int? ?? 0xFF001F58,
      secondaryDarkValue: json['secondaryDarkValue'] as int? ?? 0xFFFFC64C,
      secondaryContainerValue:
          json['secondaryContainerValue'] as int? ?? 0xFFFFD270,
      tertiaryValue: json['tertiaryValue'] as int? ?? 0xFF5C5C95,
      tertiaryContainerValue:
          json['tertiaryContainerValue'] as int? ?? 0xFFC8DBF8,
      backgroundValue: json['backgroundValue'] as int? ?? 0xFFFFC64C,
      backgroundDarkValue: json['backgroundDarkValue'] as int? ?? 0xFF212121,
      textColorValue: json['textColorValue'] as int? ?? 0xFF001F58,
      textColorDarkValue: json['textColorDarkValue'] as int? ?? 0xFFFFFFFF,
      errorColorValue: json['errorColorValue'] as int? ?? 0xFFE1004A,
      errorColorDarkValue: json['errorColorDarkValue'] as int? ?? 0xFFFF94B7,
    );

Map<String, dynamic> _$$_KgThemeDataToJson(_$_KgThemeData instance) =>
    <String, dynamic>{
      'isDark': instance.isDark,
      'innerGapValue': instance.innerGapValue,
      'borderRadiusValue': instance.borderRadiusValue,
      'paddingValue': instance.paddingValue,
      'fontFamily': instance.fontFamily,
      'primaryValue': instance.primaryValue,
      'primaryDarkValue': instance.primaryDarkValue,
      'primaryContainerValue': instance.primaryContainerValue,
      'primaryContainerDarkValue': instance.primaryContainerDarkValue,
      'secondaryValue': instance.secondaryValue,
      'secondaryDarkValue': instance.secondaryDarkValue,
      'secondaryContainerValue': instance.secondaryContainerValue,
      'tertiaryValue': instance.tertiaryValue,
      'tertiaryContainerValue': instance.tertiaryContainerValue,
      'backgroundValue': instance.backgroundValue,
      'backgroundDarkValue': instance.backgroundDarkValue,
      'textColorValue': instance.textColorValue,
      'textColorDarkValue': instance.textColorDarkValue,
      'errorColorValue': instance.errorColorValue,
      'errorColorDarkValue': instance.errorColorDarkValue,
    };
