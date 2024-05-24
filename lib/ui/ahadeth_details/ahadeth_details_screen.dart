import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth_model.dart';

class AhadethDetailsScreen extends StatefulWidget {
  const AhadethDetailsScreen({Key? key}) : super(key: key);

  static const String routeName = 'AhadethDetailsScreen';
  @override
  State<AhadethDetailsScreen> createState() => _AhadethDetailsScreenState();
}

class _AhadethDetailsScreenState extends State<AhadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    HadethModel hadethModel = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bg3.png'),
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
                margin: const EdgeInsets.all(20),
                elevation: 10,
                child: SingleChildScrollView(
                  child: Text(
                    hadethModel.content,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
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
