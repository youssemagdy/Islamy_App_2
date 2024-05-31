import 'package:flutter/material.dart';

class ThemeSheet extends StatefulWidget {
  const ThemeSheet({Key? key}) : super(key: key);

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem('Light'),
          const SizedBox(height: 15,),
          getUnselectedItem('Dark'),
        ],
      ),
    );
  }

  Widget getSelectedItem(String theme){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          theme,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Icon(
          Icons.check,
          size: 20,
          color: Theme.of(context).dividerColor,
        ),
      ],
    );
  }

  Widget getUnselectedItem(String theme){
    return Text(
      theme,
      style: Theme.of(context).textTheme.labelSmall,
    );
  }
}
