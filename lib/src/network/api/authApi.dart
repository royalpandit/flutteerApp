import 'dart:convert';

import 'package:hells/src/network/model/employeelistmodel.dart';
import 'package:hells/src/network/services/apiService.dart';
import 'package:hells/src/network/utill/Constant.dart';
import 'package:http/http.dart';

class authApi {
  var apiService = ApiService();
  Future<Response?> Login(data) async {
    print("API===>>${data['owner_id']}");
    Map<String, dynamic> dataa = <String, dynamic>{
      "owner_id": data["owner_id"],
      "company_id": data["company_id"],
      "page": data["page"],
      "search": data["search"],
      "sort_by": data["sort_by"],
      "sort_type": data["sort_type"]
    };
    print("newData==>>>$dataa");
    try {
      final Response? response =
          await apiService.post(KEmployeeList, jsonEncode(dataa));
      print("authapiResponse$response");
      return response;
    } catch (e) {
      print("error==1>$e");
    }
    return null;
  }

  Future<Response?> EmployeeList(data) async {
    var emp = employeelistmodel();

    var empo = emp.jsonData(data);
    print("empo==$empo");
/*     Map<String, dynamic> dataa = <String, dynamic>{
      "owner_id": data["owner_id"],
      "company_id": data["company_id"],
      "page": data["page"],
      "search": data["search"],
      "sort_by": data["sort_by"],
      "sort_type": data["sort_type"]
    }; */
    try {
      final response = await apiService.post(KEmployeeList, jsonEncode(empo));

      print("*******api*******");
      print(response?.body);
      //var res1 = response?.body;
     

      //print(jsonDecode(res1));
      return response;
    } catch (e) {
      print(e);
    }

    return null;
  }
}
