import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/model/Radios.dart';
import 'package:islami_app/radio_details/api_manger_raddio.dart';

class ProviderRadio with ChangeNotifier{

  List<Radios> data = [];
  final player = AudioPlayer();

  getDataRadio() async {
    data = await ApiManger.getRadioData();
    notifyListeners();
  }

  playAudio (int index) async {
    await player.play(UrlSource(data[index].url ?? ''));
    notifyListeners();
  }

  stopAudio (){
    player.stop();
    notifyListeners();
  }
}