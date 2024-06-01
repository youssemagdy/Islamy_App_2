import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tap/language_sheet.dart';
import 'package:islami_app/ui/home/tap/theme_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SettingWidget extends StatefulWidget {
  const SettingWidget({Key? key}) : super(key: key);

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              child: Text(
                'English',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              )
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            AppLocalizations.of(context)!.theme,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showThemeBottomSheet();
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                child: Text(
                  AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context){
        return const LanguageSheet();
      },
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context){
        return const ThemeSheet();
      },
    );
  }
}




