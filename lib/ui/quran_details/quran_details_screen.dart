import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/provider/setting_provider.dart';
import 'package:islami_app/style/app_theme.dart';
import 'package:provider/provider.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routName = 'QuranDetailsScreen';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of<SettingProvider>(context);
    QuranDetailsArgs args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    if (lines.isEmpty){
      readQuranFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            provider.theme == ThemeMode.dark ?
            'assets/image/darkback.png' :
            'assets/image/bg3.png',
          ),
          fit: BoxFit.fill,
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Card(
          child: lines.isNotEmpty ?
          ListView.separated(
            itemBuilder: (context , index) => Text(
              "${lines[index]} (${index + 1})",
              textDirection: TextDirection.rtl,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            separatorBuilder: (context , index) => Container(
              height: 2,
              color: Theme.of(context).dividerColor,
            ),
            itemCount: lines.length,
          ) :
          const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  List<String> lines = [];

  void readQuranFile(int index) async {
    String quranText = await rootBundle.loadString('assets/files/${index + 1}.txt');
    print(quranText);
    lines = quranText.split('\n');
    print(lines.length);
    setState(() {});
  }
}

class QuranDetailsArgs{
  String title;
  int index;

  QuranDetailsArgs(
      this.title,
      this.index,
  );
}