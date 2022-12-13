part of kg_kit;

final kgThemeDataStateProvider = StateProvider<KgThemeData>((ref) {
  return KgThemeData();
});

extension KgThemeDataExtension on ThemeData {
  KgThemeData get kgThemeData => KgThemeData();
}

class KgKit extends StatefulWidget {
  const KgKit({Key? key, required this.child}) : super(key: key);
  final Widget child;

  static KgThemeManager of(BuildContext context) {
    return KgThemeManager(context);
  }

  @override
  State<KgKit> createState() => _KgKitState();
}

class _KgKitState extends State<KgKit> {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: widget.child,
    );
  }
}
