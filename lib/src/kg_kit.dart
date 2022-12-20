part of kg_kit;

final kgThemeDataStateProvider = StateProvider<KgThemeData>((ref) {
  return KgThemeData();
});

class KgKit extends StatelessWidget {
  const KgKit({Key? key, required this.child}) : super(key: key);
  final Widget child;

  static KgThemeManager of(BuildContext context) {
    return KgThemeManager(context);
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: child,
    );
  }
}
