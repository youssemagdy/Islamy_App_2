import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:islami_app/model/RadioModel.dart';
import 'package:islami_app/model/Radios.dart';

class ApiManger{

  static Future<List<Radios>> getRadioData({String language = 'ar'}) async{
   try{
     Uri uri = Uri.parse('https://mp3quran.net/api/v3/radios?language=$language');
     var responce = await http.get(uri);
     var json = jsonDecode(responce.body);
     RadioModel model = RadioModel.fromJson(json);
     return model.radios ?? [];
   }
   catch(e){
     throw e;
   }
  }


}