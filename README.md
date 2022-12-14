A Flutter UI Kit from KyrptoGO

## Getting started

```
# add this line to your dependencies
kg_kit: 'version'
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
    "primaryValue": 0xFF11A8FF,
    "primaryDarkValue": 0xFF3FB9FF,
    "primaryContainerValue": 0xFFFFFFFF,
    "primaryContainerDarkValue": 0xFF2E2E2E,
    "secondaryValue": 0xFF0B42A8,
    "secondaryDarkValue": 0xFF384DFF,
    "secondaryContainerValue": 0xFFFFD270,
    "tertiaryValue": 0xFF5C5C95,
    "tertiaryContainerValue": 0xFFC8DBF8,
    "backgroundValue": 0xFFF3F0EA,
    "backgroundDarkValue": 0xFF191919,
    "textColorValue": 0xFF001F58,
    "textColorDarkValue": 0xFFFFFFFF,
  };
```
