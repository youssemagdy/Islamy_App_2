import 'package:flutter/material.dart';
import 'package:islami_app/provider/setting_provider.dart';
import 'package:islami_app/ui/home/hadeth_model.dart';
import 'package:provider/provider.dart';

class AhadethDetailsScreen extends StatefulWidget {
  const AhadethDetailsScreen({Key? key}) : super(key: key);

  static const String routeName = 'AhadethDetailsScreen';
  @override
  State<AhadethDetailsScreen> createState() => _AhadethDetailsScreenState();
}

class _AhadethDetailsScreenState extends State<AhadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of<SettingProvider>(context);
    HadethModel hadethModel = ModalRoute.of(context)?.settings.arguments as HadethModel;
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
          title: Text(hadethModel.title),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                child: SingleChildScrollView(
                  child: Text(
                    hadethModel.content,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
