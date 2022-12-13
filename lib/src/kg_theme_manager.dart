part of kg_kit;

class KgThemeManager {
  final BuildContext context;
  KgThemeManager(this.context);
  KgThemeData get themeData {
    return ProviderScope.containerOf(context, listen: false)
        .read(kgThemeDataStateProvider);
  }

  void set(Map<String, dynamic> themeData) {
    final stateNotifier = ProviderScope.containerOf(context, listen: false)
        .read(kgThemeDataStateProvider.notifier);
    stateNotifier.state = KgThemeData.fromJson(themeData).copyWith(
      isDark: stateNotifier.state.isDark,
    );
  }

  void setDarkMode(bool isDark) {
    final stateNotifier = ProviderScope.containerOf(context, listen: false)
        .read(kgThemeDataStateProvider.notifier);
    stateNotifier.state = stateNotifier.state.copyWith(
      isDark: isDark,
    );
  }
}
