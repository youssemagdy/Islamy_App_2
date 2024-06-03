import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/provider/setting_provider.dart';
import 'package:islami_app/style/app_theme.dart';
import 'package:islami_app/ui/ahadeth_details/ahadeth_details_screen.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/quran_details/quran_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: provider.theme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("en"),
        Locale("ar"),
      ],
      locale: Locale(provider.language),
      title: 'Islamy',
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName : (_) => HomeScreen(),
        QuranDetailsScreen.routName : (_) => QuranDetailsScreen(),
        AhadethDetailsScreen.routeName : (_) => const AhadethDetailsScreen(),
      },
    );
  }
}