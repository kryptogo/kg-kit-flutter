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
      initialStory: 'Widgets/Text',
      plugins: _plugins,
      stories: [
        Story(
          name: 'Widgets/Text',
          description: 'Simple text widget.',
          builder: (context) => KgMaterialApp(
            title: "",
            home: Center(
              child: GestureDetector(
                onTap: () {
                  KgKit.of(context).setThemeData(KgKit.of(context)
                      .themeData
                      .copyWith(backgroundValue: 0xFFFFFFFF));
                },
                child: Text(
                  'Simple text',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
