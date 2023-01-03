import 'package:flutter/material.dart';
import 'package:kg_kit/kg_kit.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return KgMaterialApp(
      isDark: context.knobs.boolean(
        label: 'isDark',
        initial: false,
        description: 'Show FAB button',
      ),
      title: "",
      home: Material(child: child),
    );
  }
}
