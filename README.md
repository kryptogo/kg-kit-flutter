<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A Flutter UI Kit from KyrptoGO

## Getting started

```
# add this line to your dependencies
kg_kit:
```

```dart
import 'package:kg_kit/kg_kit.dart';
```

## Usage

1. Wrap your root widget with `KgKit` for inject stateMange

```dart
void main() {
  runApp(const KgKit(child: MyApp()));
}
```

2. Replace `MaterialApp` with `KgMaterialApp`

```dart
@override
  Widget build(BuildContext context) {
    return const KgMaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
```

### set dark mode

You can easily change to dark mode by calling `setDarkMode`

```dart
KgKit.of(context).setDarkMode(!isDark);
```

### set fonts

you can add `.ttf` file under `lib/fonts`. And add following code in your flutter directory `pubspec.yaml`

```yaml
fonts:
  - family: awesomeFont
    fonts:
      - asset: packages/kg_kit/fonts/awesomeFont-Light.ttf
      - asset: packages/kg_kit/fonts/awesomeFont-Medium.ttf
        weight: 500
      - asset: packages/kg_kit/fonts/awesomeFont-Bold.ttf
        weight: 700
```

Then set `FontFamily`

```dart
KgKit.of(context).setFontFamily('awesomeFont');
```

### set theme data

If you want customize your `themeData`. You can use `set` to import your own themeData.

```dart
KgKit.of(context).set(ThemeData);
```

```json
// Theme data example
{
    "innerGapValue": 8,
    "borderRadiusValue": 8,
    "paddingValue": 10,
    "primaryValue": 4279347455,
    "primaryDarkValue": 4280361249,
    "primaryContainerValue": 4294967295,
    "primaryContainerDarkValue": 4281216558,
    "secondaryValue": 4278198104,
    "secondaryDarkValue": 4281880063,
    "secondaryContainerValue": 4294955632,
    "tertiaryValue": 4284243093,
    "tertiaryContainerValue": 4291353592,
    "backgroundValue": 4294921292,
    "backgroundDarkValue": 4291312443,
    "textColorValue": 4278198104,
    "textColorDarkValue": 4294967295,
  };
```
