class employeelistmodel {
  int? ownerId;
  int? companyId;
  int? page;
  String? search;
  String? sortBy;
  String? sortType;
  Data? data;

  var owner_id;
  var company_id;
  var _page;
  var _search;
  var sort_by;
  var sort_type;

  /* employeelistmodel(
      this.owner_id,
      this.company_id,
      this.page,
      this.search,
      this.sort_by,
      this.sort_type) /* ;{
    this.ownerId = ownerId;
    this.companyId = companyId;
    this.page = page;
    this.search = search;
    this.sortBy = sortBy;
    this.sortType = sortType;
  } */
  ;
 */
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
    /* employeelistmodel( data["owner_id"], data["company_id"], data["page"], data["search"],
      data["sort_by"], data["sort_type"])  */
  }
}

class Data {}
