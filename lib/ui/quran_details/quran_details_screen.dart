import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routName = 'QuranDetailsScreen';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuranDetailsArgs args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    if (lines.isEmpty){
      readQuranFile(args.index);
    }
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/bg3.png'),
          fit: BoxFit.fill,
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Card(
          margin: const EdgeInsets.all(20),
          elevation: 10,
          child: lines.isNotEmpty ?
          ListView.separated(
            itemBuilder: (context , index) => Text(
              "${lines[index]} (${index + 1})",
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            separatorBuilder: (context , index) => Container(
              height: 2,
              color: Theme.of(context).primaryColor,
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