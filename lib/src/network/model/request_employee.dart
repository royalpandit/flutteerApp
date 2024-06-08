class RequestEmployee {
  int? ownerId;
  int? companyId;
  int? page;
  String? search;
  String? sortBy;
  String? sortType;

  RequestEmployee(int owner_id, int company_id, int page, String search,
      String sort_by, String sort_type) {
    this.ownerId = ownerId;
    this.companyId = companyId;
    this.page = page;
    this.search = search;
    this.sortBy = sortBy;
    this.sortType = sortType;
  }

  RequestEmployee.fromJson(Map<String, dynamic> json) {
    if (json["owner_id"] is int) {
      ownerId = json["owner_id"];
    }
    if (json["company_id"] is int) {
      companyId = json["company_id"];
    }
    if (json["page"] is int) {
      page = json["page"];
    }
    if (json["search"] is String) {
      search = json["search"];
    }
    if (json["sort_by"] is String) {
      sortBy = json["sort_by"];
    }
    if (json["sort_type"] is String) {
      sortType = json["sort_type"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["owner_id"] = ownerId;
    _data["company_id"] = companyId;
    _data["page"] = page;
    _data["search"] = search;
    _data["sort_by"] = sortBy;
    _data["sort_type"] = sortType;
    return _data;
  }
}
