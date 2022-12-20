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

  void setThemeMode(ThemeMode mode) {
    var brightness = SchedulerBinding.instance?.window.platformBrightness;
    bool isDarkMode;
    switch (mode) {
      case ThemeMode.light:
        isDarkMode = false;
        break;
      case ThemeMode.dark:
        isDarkMode = true;
        break;
      case ThemeMode.system:
        isDarkMode = brightness == Brightness.dark;
        break;
    }

    final stateNotifier = ProviderScope.containerOf(context, listen: false)
        .read(kgThemeDataStateProvider.notifier);
    stateNotifier.state = stateNotifier.state.copyWith(
      isDark: isDarkMode,
    );
  }

  void setFontFamily(String fontFamily) {
    final stateNotifier = ProviderScope.containerOf(context, listen: false)
        .read(kgThemeDataStateProvider.notifier);
    stateNotifier.state = stateNotifier.state.copyWith(fontFamily: fontFamily);
  }
}
