import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'kg_theme_data.freezed.dart';
part 'kg_theme_data.g.dart';

enum ThemeColorTypes {
  primary,
  primaryDark,
  primaryContainer,
  primaryContainerDark,
  secondary,
  secondaryDark,
  secondaryContainer,
  tertiary,
  tertiaryContainer,
  background,
  backgroundDark,
  textColor,
  textColorDark,
}

extension Naming on ThemeColorTypes {
  String get name {
    switch (this) {
      case ThemeColorTypes.primary:
        return 'primary';
      case ThemeColorTypes.primaryDark:
        return 'primaryDark';
      case ThemeColorTypes.primaryContainer:
        return 'primaryContainer';
      case ThemeColorTypes.primaryContainerDark:
        return 'primaryContainerDark';
      case ThemeColorTypes.secondary:
        return 'secondary';
      case ThemeColorTypes.secondaryDark:
        return 'secondaryDark';
      case ThemeColorTypes.secondaryContainer:
        return 'secondaryContainer';
      case ThemeColorTypes.tertiary:
        return 'tertiary';
      case ThemeColorTypes.tertiaryContainer:
        return 'tertiaryContainer';
      case ThemeColorTypes.background:
        return 'background';
      case ThemeColorTypes.backgroundDark:
        return 'backgroundDark';
      case ThemeColorTypes.textColor:
        return 'textColor';
      case ThemeColorTypes.textColorDark:
        return 'textColorDark';
    }
  }
}

@freezed
class KgThemeData with _$KgThemeData {
  KgThemeData._();
  factory KgThemeData({
    @Default(false) bool isDark,
    @Default(8) double innerGapValue,
    @Default(8) double borderRadiusValue,
    @Default(10) double paddingValue,
    @Default('Barlow') String fontFamily,
    @Default(0xFFFFC211) int primaryValue,
    @Default(0xFFFFDF81) int primaryDarkValue,
    @Default(0xFFFFDF81) int primaryContainerValue,
    @Default(0xFFFFEAAB) int primaryContainerDarkValue,
    @Default(0xFF001F58) int secondaryValue,
    @Default(0xFFFFC64C) int secondaryDarkValue,
    @Default(0xFFFFD270) int secondaryContainerValue,
    @Default(0xFF5C5C95) int tertiaryValue,
    @Default(0xFFC8DBF8) int tertiaryContainerValue,
    @Default(0xFFFFC64C) int backgroundValue,
    @Default(0xFF212121) int backgroundDarkValue,
    @Default(0xFF001F58) int textColorValue,
    @Default(0xFFFFFFFF) int textColorDarkValue,
    @Default(0xFFE1004A) int errorColorValue,
    @Default(0xFFFF94B7) int errorColorDarkValue,
  }) = _KgThemeData;

  BorderRadius get borderRadius => BorderRadius.circular(borderRadiusValue);
  Widget get innerGap => SizedBox(width: innerGapValue);
  EdgeInsets get padding => EdgeInsets.all(paddingValue);
  EdgeInsets get screenPadding => const EdgeInsets.symmetric(horizontal: 24);
  EdgeInsets get cardPadding =>
      const EdgeInsets.symmetric(horizontal: 12, vertical: 16);

  Color get primary => Color(primaryValue);
  Color get primaryDark => Color(primaryDarkValue);
  Color get primaryContainer => Color(primaryContainerValue);
  Color get primaryContainerDark => Color(primaryContainerDarkValue);
  Color get secondary => Color(secondaryValue);
  Color get secondaryDark => Color(secondaryDarkValue);
  Color get secondaryContainer => Color(secondaryContainerValue);
  Color get tertiary => Color(tertiaryValue);
  Color get tertiaryContainer => Color(tertiaryContainerValue);
  Color get background => Color(backgroundValue);
  Color get backgroundDark => Color(backgroundDarkValue);
  Color get textColor => Color(textColorValue);
  Color get textColorDark => Color(textColorDarkValue);
  Color get error => Color(errorColorValue);
  Color get errorDark => Color(errorColorDarkValue);

  TextStyle get largeText => TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        fontFamily: fontFamily,
        color: isDark ? textColorDark : textColor,
      );
  TextStyle get headline1 => customTextTheme(isDark: isDark).headline1!;
  TextStyle get headline2 => customTextTheme(isDark: isDark).headline2!;
  TextStyle get headline3 => customTextTheme(isDark: isDark).headline3!;
  TextStyle get headline4 => customTextTheme(isDark: isDark).headline4!;
  TextStyle get headline5 => customTextTheme(isDark: isDark).headline5!;
  TextStyle get headline6 => customTextTheme(isDark: isDark).headline6!;
  TextStyle get subtitle1 => customTextTheme(isDark: isDark).subtitle1!;
  TextStyle get subtitle1Bold => customTextTheme(isDark: isDark)
      .subtitle1!
      .copyWith(fontWeight: FontWeight.bold);
  TextStyle get subtitle2 => customTextTheme(isDark: isDark).subtitle2!;
  TextStyle get bodyText1 => customTextTheme(isDark: isDark).bodyText1!;
  TextStyle get bodyText1Bold =>
      customTextTheme(isDark: isDark).bodyText1!.copyWith(
            fontWeight: FontWeight.bold,
          );
  TextStyle get bodyText2 => customTextTheme(isDark: isDark).bodyText2!;
  TextStyle get bodyText2Bold =>
      customTextTheme(isDark: isDark).bodyText2!.copyWith(
            fontWeight: FontWeight.bold,
          );
  TextStyle get button => customTextTheme(isDark: isDark).button!;
  TextStyle get buttonSm => customTextTheme(isDark: isDark).button!.copyWith(
        fontSize: 12,
      );
  TextStyle get caption1 => customTextTheme(isDark: isDark).caption!;
  TextStyle get caption1Bold =>
      customTextTheme(isDark: isDark).caption!.copyWith(
            fontWeight: FontWeight.bold,
          );
  TextStyle get caption2 => customTextTheme(isDark: isDark).caption!.copyWith(
        fontSize: 11,
      );
  TextStyle get caption2Bold =>
      customTextTheme(isDark: isDark).caption!.copyWith(
            fontSize: 11,
            fontWeight: FontWeight.bold,
          );
  TextStyle get overline => customTextTheme(isDark: isDark).overline!;

  BoxShadow get boxShadow => BoxShadow(
        color: isDark
            ? const Color.fromARGB(249, 47, 47, 47)
            : const Color.fromARGB(255, 186, 186, 186),
        blurRadius: 5,
        offset: const Offset(0, 5),
      );

  ThemeData light({FlexScheme? scheme}) {
    return FlexThemeData.light(
      fontFamily: fontFamily,
      colors: customFlexScheme.light,
      scheme: scheme,
      background: background,
      textTheme: customTextTheme(isDark: false),
    );
  }

  ThemeData dark({FlexScheme? scheme}) {
    return FlexThemeData.dark(
      fontFamily: fontFamily,
      colors: customFlexScheme.dark,
      scheme: scheme,
      background: backgroundDark,
      textTheme: customTextTheme(isDark: true),
    );
  }

  TextTheme customTextTheme({required bool isDark}) {
    return TextTheme(
      headline1: TextStyle(
        fontFamily: fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: isDark ? textColorDark : textColor,
      ),
      headline2: TextStyle(
        fontFamily: fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: isDark ? textColorDark : textColor,
      ),
      headline3: TextStyle(
        fontFamily: fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: isDark ? textColorDark : textColor,
      ),
      headline4: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: isDark ? textColorDark : textColor,
      ),
      headline5: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: isDark ? textColorDark : textColor,
      ),
      headline6: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: isDark ? textColorDark : textColor,
      ),
      bodyText1: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: isDark ? textColorDark : textColor,
      ),
      bodyText2: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: isDark ? textColorDark : textColor,
      ),
      subtitle1: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: isDark ? textColorDark : textColor,
      ),
      subtitle2: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: isDark ? textColorDark : textColor,
      ),
      button: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: isDark ? textColorDark : textColor,
      ),
      caption: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: isDark ? textColorDark : textColor,
      ),
      overline: TextStyle(
        fontFamily: fontFamily,
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: isDark ? textColorDark : textColor,
      ),
    );
  }

  FlexSchemeData get customFlexScheme => FlexSchemeData(
        name: 'Midnight blue',
        description: 'Midnight blue theme, custom definition of all colors',
        light: FlexSchemeColor(
          primary: primary,
          primaryContainer: primaryContainer,
          secondary: secondary,
          secondaryContainer: secondaryContainer,
          tertiary: tertiary,
          tertiaryContainer: tertiaryContainer,
          error: error,
        ),
        dark: FlexSchemeColor(
          primary: primaryDark,
          primaryContainer: primaryContainerDark,
          secondary: secondaryDark,
          secondaryContainer: secondaryContainer,
          tertiary: tertiary,
          tertiaryContainer: tertiaryContainer,
          error: errorDark,
        ),
      );
  factory KgThemeData.fromJson(Map<String, dynamic> json) =>
      _$KgThemeDataFromJson(json);

  String toOutputString() {
    return 'KgThemeData(innerGapValue: $innerGapValue, borderRadiusValue: $borderRadiusValue, paddingValue: $paddingValue, primaryValue: $primaryValue, primaryDarkValue: $primaryDarkValue, primaryContainerValue: $primaryContainerValue, primaryContainerDarkValue: $primaryContainerDarkValue, secondaryValue: $secondaryValue, secondaryDarkValue: $secondaryDarkValue, secondaryContainerValue: $secondaryContainerValue, tertiaryValue: $tertiaryValue, tertiaryContainerValue: $tertiaryContainerValue, backgroundValue: $backgroundValue, backgroundDarkValue: $backgroundDarkValue, textColorValue: $textColorValue, textColorDarkValue: $textColorDarkValue)';
  }
}
