import 'package:example/test_schemes.dart';
import 'package:flutter/material.dart';
import 'package:kg_kit/kg_kit.dart';

void main() {
  runApp(const KgKit(child: MyApp()));
}

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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Color Scheme",
                style: Theme.of(context).textTheme.headline3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      KgKit.of(context).set(KgThemeData().toJson());
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                  ),
                  ...[DefaultTheme.poke, DefaultTheme.blue, DefaultTheme.green]
                      .map(
                    (data) {
                      return GestureDetector(
                        onTap: () {
                          KgKit.of(context).set(data);
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(data["primaryValue"]),
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                "Color Scheme",
                style: Theme.of(context).textTheme.headline3,
              ),
              Row(
                children: [
                  ...['Barlow', 'Anton'].map(
                    (fontFamily) => GestureDetector(
                      onTap: () {
                        KgKit.of(context).setFontFamily(fontFamily);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: fontFamily ==
                                  KgKit.of(context).themeData.fontFamily
                              ? Theme.of(context).primaryColor
                              : Colors.transparent,
                          border: Border.all(
                              color: Theme.of(context).colorScheme.onPrimary),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          fontFamily,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                height: 1,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(
                "Color Scheme",
                style: Theme.of(context).textTheme.headline3,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Switch.adaptive(
                  activeColor: Theme.of(context).primaryColor,
                  value: KgKit.of(context).themeData.isDark,
                  onChanged: (value) {
                    final isDark = KgKit.of(context).themeData.isDark;
                    KgKit.of(context).setThemeMode(
                      isDark ? ThemeMode.light : ThemeMode.dark,
                    );
                  },
                ),
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  final output = KgKit.of(context).themeData.toJson();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.onPrimary),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Export Theme',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          height: 1,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
