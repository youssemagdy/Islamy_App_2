import 'package:flutter/material.dart';
import 'package:islami_app/ui/ahadeth_details/ahadeth_details_screen.dart';
import 'package:islami_app/ui/home/hadeth_model.dart';

// ignore: must_be_immutable
class HadethTitleItem extends StatelessWidget {
  HadethModel hadeth;

  HadethTitleItem({
    Key? key,
    required this.hadeth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, AhadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
