import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router.dart';
import 'settings/settings_controller.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      theme: ThemeData.from(colorScheme: const ColorScheme.light()),
      darkTheme: ThemeData.from(colorScheme: const ColorScheme.dark()),
      themeMode: ref.watch(themeModeProvider).value,
      // onGenerateRoute: (routeSettings) => MaterialPageRoute<void>(
      //   settings: routeSettings,
      //   builder: (context) {
      //     switch (routeSettings.name) {
      //       case SettingsView.routeName:
      //         return const SettingsView();
      //       case SampleItemDetailsView.routeName:
      //         return const SampleItemDetailsView();
      //       case SampleItemListView.routeName:
      //       default:
      //         return const SampleItemListView();
      //     }
      //   },
      // ),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
