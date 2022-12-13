part of kg_kit;

class KgMaterialApp extends ConsumerStatefulWidget {
  const KgMaterialApp({
    Key? key,
    required this.home,
    required this.title,
  }) : super(key: key);

  final Widget home;
  final String title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _KgMaterialAppState();
}

class _KgMaterialAppState extends ConsumerState<KgMaterialApp> {
  @override
  build(context) {
    final kgThemeProvider = ref.watch(kgThemeDataStateProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: kgThemeProvider.light(),
      darkTheme: kgThemeProvider.dark(),
      themeMode: kgThemeProvider.isDark ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: widget.home,
    );
  }
}
