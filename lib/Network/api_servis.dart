import 'package:dio/dio.dart';

class ApiServis {
  final baseurl = "https://www.themealdb.com/";
  Dio dio = Dio();
  getData({required String url})async{
    var response = await dio.get("$baseurl$url");
    Map <String,dynamic> data = response.data;
    return response.data; 
    }
  }

