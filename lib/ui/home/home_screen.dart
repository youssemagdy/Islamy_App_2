import 'package:flutter/material.dart';
import 'package:islami_app/style/app_theme.dart';
import 'package:islami_app/ui/home/tap/ahadeth_widget.dart';
import 'package:islami_app/ui/home/tap/quran_widget.dart';
import 'package:islami_app/ui/home/tap/radio_widget.dart';
import 'package:islami_app/ui/home/tap/sebha_widget.dart';
import 'package:islami_app/ui/home/tap/settings_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentNavIndex = 2;
  List<Widget> navWidget = [
    const RadioWidget(),
    const SebhaWidget(),
    AhadethWidget(),
    QuranWidget(),
    const SettingWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppTheme.isDark ? 'assets/image/darkback.png' : 'assets/image/bg3.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islamy),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentNavIndex,
          onTap: (index){
            setState(() {
              print(index);
              currentNavIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                AssetImage('assets/icon/radio_icon.png'),
              ),
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                AssetImage('assets/icon/sebha_icon.png'),
              ),
              label: 'Sebha',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                AssetImage('assets/icon/ahadeth_icon.png'),
              ),
              label: 'Ahadeth',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                AssetImage('assets/icon/quran_icon.png'),
              ),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const Icon(
                Icons.settings,
              ),
              label: 'Settings',
            ),
          ],
        ),
        body: navWidget[
          currentNavIndex
        ],
      ),
    );
  }
}
