import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/radio_details/provider_radio.dart';
import 'package:provider/provider.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ProviderRadio()..getDataRadio(),
      child: Consumer<ProviderRadio>(
        builder: (BuildContext context , ProviderRadio myProvider , Widget? child){
          print(myProvider.data.length);
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100,),
              Image.asset('assets/image/radio_image.png'),
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Text(
                  AppLocalizations.of(context)!.holy_quran_radio,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: myProvider.data.length,
                  physics: const PageScrollPhysics(),
                  itemBuilder: (context , index) => Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Column(
                        children: [
                          Text(myProvider.data[index].name ?? ''),
                          const SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: (){
                                  myProvider.playAudio(index);
                                },
                                child: const Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  myProvider.stopAudio();
                                },
                                child: const Icon(
                                  Icons.pause,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
