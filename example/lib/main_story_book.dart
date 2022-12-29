import 'package:example/widget/main_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:kg_kit/kg_kit.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  KgKit.init(KgThemeData().copyWith(
    backgroundValue: 0xFFFFFFFF,
  ));
  runApp(const KgKit(child: MyApp()));
}

final _plugins = initializePlugins(
  contentsSidePanel: true,
  knobsSidePanel: true,
  initialDeviceFrameData: DeviceFrameData(
    device: Devices.ios.iPhone13,
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const KgMaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late KgThemeManager manger;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Storybook(
      initialStory: 'Common/Button',
      plugins: _plugins,
      stories: [
        Story(
          name: 'Common/Button',
          description: 'Button',
          builder: (context) => StoryWidget(
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
          ),
        ),
        Story(
          name: 'Common/Icon',
          description: 'Icon',
          builder: (context) => const Text("Icon"),
        ),
        Story(
          name: 'Common/Typography',
          description: 'Typography',
          builder: (context) => const Text("Icon"),
        ),

        // Navigation
        Story(
          name: 'Navigation/Tab Bar',
          description: 'Tab Bar',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Navigation/Dot Paginat',
          description: 'Tab Bar',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Navigation/Top Navigation',
          description: 'Tab Bar',
          builder: (context) => const Text("Tab Bar"),
        ),

        // Data Input
        Story(
          name: 'Data Input/Inputs',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data Input/Select',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data Input/Form',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data Input/Checkbox',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data Input/Radio',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data Input/Slider',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data Input/Switch',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data Input/DatePicker',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data Input/TimePicker',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data Input/AutoComplete',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data Input/Rate',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),

        // Data View
        Story(
          name: 'Data View/Avatar',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Badge',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Chips',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Carousel',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Collapse',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Empty',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/QRCode',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/NFT QRCode Wrapper',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Search Bar',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Statistic',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Tabs',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Tag',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Timeline',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Tooltip',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Segmented',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Tour',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),

        // List
        Story(
          name: 'Data View/List/Header',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/List/Content Item',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/List/Content Groups',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/List/Asset List',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/List/Transaction List',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/List/Wallet List',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/List/Setting List',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/List/Contact List',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),

        // Card
        Story(
          name: 'Data View/Card/Card',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Card/NFT List Card',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Card/Reward Card',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Card/Notification Card',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Card/Transaction Card',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),

        // Image
        Story(
          name: 'Data View/Image/Image',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Image/Image Grid',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),

        // Chart
        Story(
          name: 'Data View/Chart/Line Chart',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Data View/Chart/Pie Chart',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),

        // Feedback
        Story(
          name: 'Feedback/Alert',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Feedback/Message',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Feedback/Notification',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Feedback/Progress',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Feedback/Spin',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Feedback/Result?',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Feedback/Modal',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Feedback/Skeletion',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),

        // Layout
        Story(
          name: 'Layout/Divider',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Layout/Scroll Bar',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Layout/Section Header',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Layout/Title Wrapper',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Layout/Detail Page',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Layout/Descriptions',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),

        // Dialog
        Story(
          name: 'Dialog/Popup',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Dialog/Bottom Sheet',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
        Story(
          name: 'Dialog/Snackbar',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),

        // Promotion
        Story(
          name: 'Promotion Banner/Banner',
          description: 'Inputs',
          builder: (context) => const Text("Tab Bar"),
        ),
      ],
    );
  }
}
