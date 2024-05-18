import 'package:flutter/material.dart';
import 'package:islami_app/ui/quran_details/quran_details_screen.dart';

// ignore: must_be_immutable
class QuranTitleWidget extends StatelessWidget {
  QuranTitleWidget({
    Key? key,
    required this.title,
    required this.versesNumber,
    required this.index,
  }) : super(key: key);

  String title;
  String versesNumber;
  int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(
          context,
          QuranDetailsScreen.routName,
          arguments: QuranDetailsArgs(title, index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            versesNumber,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
