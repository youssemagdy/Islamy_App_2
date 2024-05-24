import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/ahadeth_widget.dart';
import 'package:islami_app/ui/home/quran_widget.dart';
import 'package:islami_app/ui/home/radio_widget.dart';
import 'package:islami_app/ui/home/sebha_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentNavIndex = 0;
  List<Widget> navWidget = [
    const RadioWidget(),
    const SebhaWidget(),
    AhadethWidget(),
    QuranWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/bg3.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Islamy'),
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
          ],
        ),
        body: navWidget[
          currentNavIndex
        ],
      ),
    );
  }
}
