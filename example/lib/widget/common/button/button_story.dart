import 'package:example/widget/story_widget.dart';
import 'package:flutter/material.dart';
import 'package:kg_kit/kg_kit.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class ButtonStory extends StatelessWidget {
  const ButtonStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoryWidget(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KgButton(
              type: KgButtonType.primary,
              onTap: () async {
                await Future.delayed(const Duration(seconds: 1));
              },
              label: context.knobs.text(
                label: 'label',
                initial: 'Button',
              ),
            ),
            h8,
            KgButton(
              type: KgButtonType.outline,
              onTap: () async {
                await Future.delayed(const Duration(seconds: 1));
              },
              label: context.knobs.text(
                label: 'label',
                initial: 'Button',
              ),
            ),
            h8,
            KgButton(
              type: KgButtonType.text,
              onTap: () async {
                await Future.delayed(const Duration(seconds: 1));
              },
              label: context.knobs.text(
                label: 'label',
                initial: 'Button',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
