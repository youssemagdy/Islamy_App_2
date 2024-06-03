import 'package:flutter/material.dart';
import 'package:islami_app/provider/setting_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaWidget extends StatefulWidget {
  const SebhaWidget({Key? key}) : super(key: key);

  @override
  State<SebhaWidget> createState() => _SebhaWidgetState();
}

class _SebhaWidgetState extends State<SebhaWidget> {

  int count = 0;
  int index = 0;
  double angel = 0;
  List<String> tasbeh = [
    'سبحان الله' ,
    'الحمد لله' ,
    'الله أكبر' ,
    ' وحده لا شريك له' ,
    ' له الملك' ,
    'وله الحمد' ,
    'وهو على كل شيء قدير' ,
    ' ولا حول ولا قوة إلا بالله' ,
  ];

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of<SettingProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  provider.theme == ThemeMode.dark ?
                  'assets/image/dark_head_of_seb7a.png' :
                  'assets/image/head_of_seb7a.png',
                  height: 100,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                counterMethod();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 73.0,),
                child: Align(
                  alignment: Alignment.center,
                  child: Transform.rotate(
                      angle: angel,
                      child: Image.asset(
                        provider.theme == ThemeMode.dark ?
                        'assets/image/dark_body_of_seb7a.png' :
                        'assets/image/body_of_seb7a.png',
                      ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 50,),
        Text(
          AppLocalizations.of(context)!.counter,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 50,),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          decoration: BoxDecoration(
            color: provider.theme == ThemeMode.dark ? const Color(0xFF151B30) : const Color(0xFFC8B396),
            borderRadius: BorderRadius.circular(30)
          ),
          child: Text(
            count.toString(),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        const SizedBox(height: 40,),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          decoration: BoxDecoration(
            color: provider.theme == ThemeMode.dark ? const Color(0xFFFACC1D) : const Color(0xFFB7935F),
            borderRadius: BorderRadius.circular(30)
          ),
          child: Text(
            tasbeh[index],
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ],
    );
  }

  counterMethod () {
    angel += 10;
    if (count == 33){
      count = 0;
      index ++;
      if (index < tasbeh.length - 1){
        index ++;
      }
      else {
        index = 0;
      }
    }
    else {
      count ++;
    }

    setState(() {

    });
  }

}
