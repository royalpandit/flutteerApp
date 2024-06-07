import 'dart:convert';
import 'dart:io';
import 'package:hells/src/data/network/app_exceptions.dart';
import 'package:hells/src/data/network/base_api_services.dart';
import 'package:hells/src/network/utill/Constant.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class NetworkApiServices extends BaseApiServices {


  @override
  Future getApis(String url, dynamic data) async {
    String queryString = '';
    String requestUrl = '';
    if (data == null) {
      requestUrl = url;
    } else {
      queryString = Uri(queryParameters: data).query;
      requestUrl = '$url?$queryString';
    }
    //final headers = {"Accept": "application/json",""Authorization": basicAuth"};
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(requestUrl), headers: { 'Content-type': 'application/json',
              'Accept': 'application/json',
              "Authorization": "$basicAuth",}).timeout(
                const Duration(
                  seconds: 20,
                ),
              );
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future getPostApiResponseWithToken(String url, data) async {
    dynamic responseJson;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token')!;
    final headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
      'Authorization': '$basicAuth',
        'Authorization': 'Bearer $token',
    };
    try {
      final response = await http
          .post(Uri.parse(url), body: json.encode(data), headers: headers)
          .timeout(const Duration(seconds: 30));
      return responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } catch (e) {
     // log('error$e');
    }
    return responseJson;
  }

  @override
  Future getGetApiResponse(String url) async {
    dynamic responsejson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responsejson = responseJson(response);
    } on SocketException {
      throw InternetException("NO Internet is available right now");
    }

    return responsejson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responsejson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responsejson = responseJson(response);
    } on SocketException {
      throw InternetException("NO Internet is available right now");
    }

    return responsejson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return response;
      case 403:
        return response;
      case 400:
        throw BadRequestException(response.body.toString());
      case 404:
        throw UnauthorizedException(response.body.toString());
      default:
        FetchDataException(
            'Error while Communication with status code${response.statusCode}');
    }
  }

  dynamic responseJson(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 403:
        return response;
      case 400:
        throw BadRequestException("achi request nhi hai yeh");
      default:
        throw InternetException(
            "${response.statusCode} : ${response.reasonPhrase}");
    }
  }
}
