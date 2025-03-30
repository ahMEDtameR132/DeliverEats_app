import 'package:dio/dio.dart';

class ApiServis {
  final baseurl = "https://www.themealdb.com/";
  Dio dio = Dio();
  // getData()async{
  
    Future <Map<String,dynamic>> getData({required String url})async{
        var response = await dio.get("$baseurl$url");
        return response.data; 
    }
    
    }
  

