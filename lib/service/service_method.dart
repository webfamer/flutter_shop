import 'package:dio/dio.dart';
import 'dart:io';
import 'dart:async';
import '../config/service_url.dart';

Future getHomepageContent() async {
  try {
    print('开始获取数据......');
    Response response;
    Dio dio = new Dio();
    dio.options.contentType = ContentType.parse('application/x-www-form-urlencoded').toString();
    var data = {'lon': '120.1421', 'lat': '30.31974'};
  
    response = await dio.post(servePath['homePageContent'],data:data);
    if(response.statusCode ==200){
    return response.data;
    }else{
      throw Exception('===========后端接口或代码出现异常，请检查');
    }
  } catch (e) {
    return print('ERROR======>$e');
  }
}
