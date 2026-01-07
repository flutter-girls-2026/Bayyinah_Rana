import 'dart:math';

import 'package:dio/dio.dart';

class ConstantApi {
  String baseUrl = 'http://api.alquran.cloud/v1/ayah';
  Dio dio = Dio();

  static String get ayahNumberEndPoint {
   final randomAyah = Random().nextInt(6236)+ 1;
   return '/$randomAyah';
  }

  ConstantApi(){
    dio.options = BaseOptions(baseUrl: baseUrl);
  }
}
