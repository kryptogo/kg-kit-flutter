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

## dark mode trigger

Trigger contain `onTap` method. What you have to do is place your widget under trigger widget

```dart
KgChangeThemeTrigger(
  child: yourWidget
  ),
),
```

## add fonts supports

you can add `.ttf` file under `lib/fonts`. And add following code in your app's `pubspec.yaml`

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
