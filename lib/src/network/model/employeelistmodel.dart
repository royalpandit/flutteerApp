class employeelistmodel {
  int? code;
  bool? status;
  String? path;
  String? message;
  Data? data;


  Map jsonData(data) {
    Map<String, dynamic> dataa = <String, dynamic>{
      "owner_id": data["owner_id"],
      "company_id": data["company_id"],
      "page": data["page"],
      "search": data["search"],
      "sort_by": data["sort_by"],
      "sort_type": data["sort_type"]
    };
    return dataa;
  }
}
class Data{

}