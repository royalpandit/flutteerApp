import 'dart:convert';

import 'package:hells/src/network/utill/Constant.dart';
import 'package:http/http.dart' as http;

import 'package:http/http.dart';

class ApiService {
  final header = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  Uri UriData(String url) {
    return Uri.parse(url);
  }

//Get Request
  Future<Response?> get(weburl) async {
    try {
      final Response response = await http.get(UriData(basicUrl + weburl));
      return response;
    } catch (e) {
      print("error$e");
    }
    return null;
  }

//PostRequest

  Future<Response?> post(String weburl, dynamic data) async {
    print("*****post*****");

    print(weburl);
    print("$data");

    try {
      final url = Uri.parse(basicUrl + weburl);
      final response = await http.post(url, headers: header, body: data);

      return response;
    } catch (e) {
      print("apiservice====$e");
    }
    return null;
  }

//Put Request
  Future<Response?> put() async {
    try {
      final url = Uri.parse("url");
      final Response response = await http.put(url);
      return response;
    } catch (e) {
      print("error$e");
    }
    return null;
  }

//delete Request
  Future<Response?> delete() async {
    try {
      final url = Uri.parse("url");
      final Response response = await http.delete(url);
      return response;
    } catch (e) {
      print("error$e");
    }
    return null;
  }
}
