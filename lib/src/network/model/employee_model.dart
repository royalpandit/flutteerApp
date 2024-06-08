
class EmployeeModel {
  int? code;
  bool? status;
  String? path;
  String? message;
  Data? data;

  EmployeeModel({this.code, this.status, this.path, this.message, this.data});

  EmployeeModel.fromJson(Map<String, dynamic> json) {
    if(json["code"] is int) {
      code = json["code"];
    }
    if(json["status"] is bool) {
      status = json["status"];
    }
    if(json["path"] is String) {
      path = json["path"];
    }
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["code"] = code;
    _data["status"] = status;
    _data["path"] = path;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  List<DesignationCount>? designationCount;
  EmployeeResult? employeeResult;

  Data({this.designationCount, this.employeeResult});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["designation_count"] is List) {
      designationCount = json["designation_count"] == null ? null : (json["designation_count"] as List).map((e) => DesignationCount.fromJson(e)).toList();
    }
    if(json["employee_result"] is Map) {
      employeeResult = json["employee_result"] == null ? null : EmployeeResult.fromJson(json["employee_result"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(designationCount != null) {
      _data["designation_count"] = designationCount?.map((e) => e.toJson()).toList();
    }
    if(employeeResult != null) {
      _data["employee_result"] = employeeResult?.toJson();
    }
    return _data;
  }
}

class EmployeeResult {
  int? currentPage;
  List<Data1>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  EmployeeResult({this.currentPage, this.data, this.firstPageUrl, this.from, this.lastPage, this.lastPageUrl, this.links, this.nextPageUrl, this.path, this.perPage, this.prevPageUrl, this.to, this.total});

  EmployeeResult.fromJson(Map<String, dynamic> json) {
    if(json["current_page"] is int) {
      currentPage = json["current_page"];
    }
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data1.fromJson(e)).toList();
    }
    if(json["first_page_url"] is String) {
      firstPageUrl = json["first_page_url"];
    }
    if(json["from"] is int) {
      from = json["from"];
    }
    if(json["last_page"] is int) {
      lastPage = json["last_page"];
    }
    if(json["last_page_url"] is String) {
      lastPageUrl = json["last_page_url"];
    }
    if(json["links"] is List) {
      links = json["links"] == null ? null : (json["links"] as List).map((e) => Links.fromJson(e)).toList();
    }
    if(json["next_page_url"] is String) {
      nextPageUrl = json["next_page_url"];
    }
    if(json["path"] is String) {
      path = json["path"];
    }
    if(json["per_page"] is int) {
      perPage = json["per_page"];
    }
    prevPageUrl = json["prev_page_url"];
    if(json["to"] is int) {
      to = json["to"];
    }
    if(json["total"] is int) {
      total = json["total"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["current_page"] = currentPage;
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    _data["first_page_url"] = firstPageUrl;
    _data["from"] = from;
    _data["last_page"] = lastPage;
    _data["last_page_url"] = lastPageUrl;
    if(links != null) {
      _data["links"] = links?.map((e) => e.toJson()).toList();
    }
    _data["next_page_url"] = nextPageUrl;
    _data["path"] = path;
    _data["per_page"] = perPage;
    _data["prev_page_url"] = prevPageUrl;
    _data["to"] = to;
    _data["total"] = total;
    return _data;
  }
}

class Links {
  dynamic url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["active"] is bool) {
      active = json["active"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["label"] = label;
    _data["active"] = active;
    return _data;
  }
}

class Data1 {
  String? firstName;
  String? lastName;
  String? mobileNo;
  String? type;
  dynamic profile;
  String? companyName;
  String? designationName;
  dynamic subDesignationName;
  dynamic employeeTypeName;
  String? workingShift;
  int? id;
  dynamic uniqueId;
  dynamic refferBy;
  int? ownerId;
  int? userId;
  int? companyId;
  int? designationId;
  int? departmentId;
  dynamic subDesignationId;
  dynamic employmentTypeId;
  String? workingShiftId;
  String? shiftStartTime;
  String? shiftEndTime;
  String? workingHours;
  dynamic salary;
  dynamic isTransfered;
  String? joiningDate;
  dynamic employeeCodeState;
  int? createdBy;
  String? compOff;
  int? carryForwardCount;
  int? isBasic;
  dynamic fatherName;
  dynamic motherName;
  dynamic alternateMobile;
  int? attendanceCheckIn;
  String? createdAt;
  String? updatedAt;

  Data1({this.firstName, this.lastName, this.mobileNo, this.type, this.profile, this.companyName, this.designationName, this.subDesignationName, this.employeeTypeName, this.workingShift, this.id, this.uniqueId, this.refferBy, this.ownerId, this.userId, this.companyId, this.designationId, this.departmentId, this.subDesignationId, this.employmentTypeId, this.workingShiftId, this.shiftStartTime, this.shiftEndTime, this.workingHours, this.salary, this.isTransfered, this.joiningDate, this.employeeCodeState, this.createdBy, this.compOff, this.carryForwardCount, this.isBasic, this.fatherName, this.motherName, this.alternateMobile, this.attendanceCheckIn, this.createdAt, this.updatedAt});

  Data1.fromJson(Map<String, dynamic> json) {
    if(json["first_name"] is String) {
      firstName = json["first_name"];
    }
    if(json["last_name"] is String) {
      lastName = json["last_name"];
    }
    if(json["mobile_no"] is String) {
      mobileNo = json["mobile_no"];
    }
    if(json["type"] is String) {
      type = json["type"];
    }
    profile = json["profile"];
    if(json["company_name"] is String) {
      companyName = json["company_name"];
    }
    if(json["designation_name"] is String) {
      designationName = json["designation_name"];
    }
    subDesignationName = json["sub_designation_name"];
    employeeTypeName = json["employee_type_name"];
    if(json["working_shift"] is String) {
      workingShift = json["working_shift"];
    }
    if(json["id"] is int) {
      id = json["id"];
    }
    uniqueId = json["unique_id"];
    refferBy = json["reffer_by"];
    if(json["owner_id"] is int) {
      ownerId = json["owner_id"];
    }
    if(json["user_id"] is int) {
      userId = json["user_id"];
    }
    if(json["company_id"] is int) {
      companyId = json["company_id"];
    }
    if(json["designation_id"] is int) {
      designationId = json["designation_id"];
    }
    if(json["department_id"] is int) {
      departmentId = json["department_id"];
    }
    subDesignationId = json["sub_designation_id"];
    employmentTypeId = json["employment_type_id"];
    if(json["working_shift_id"] is String) {
      workingShiftId = json["working_shift_id"];
    }
    if(json["shift_start_time"] is String) {
      shiftStartTime = json["shift_start_time"];
    }
    if(json["shift_end_time"] is String) {
      shiftEndTime = json["shift_end_time"];
    }
    if(json["working_hours"] is String) {
      workingHours = json["working_hours"];
    }
    salary = json["salary"];
    isTransfered = json["is_transfered"];
    if(json["joining_date"] is String) {
      joiningDate = json["joining_date"];
    }
    employeeCodeState = json["employee_code_state"];
    if(json["created_by"] is int) {
      createdBy = json["created_by"];
    }
    if(json["comp_off"] is String) {
      compOff = json["comp_off"];
    }
    if(json["carry_forward_count"] is int) {
      carryForwardCount = json["carry_forward_count"];
    }
    if(json["is_basic"] is int) {
      isBasic = json["is_basic"];
    }
    fatherName = json["father_name"];
    motherName = json["mother_name"];
    alternateMobile = json["alternate_mobile"];
    if(json["attendance_check_in"] is int) {
      attendanceCheckIn = json["attendance_check_in"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["first_name"] = firstName;
    _data["last_name"] = lastName;
    _data["mobile_no"] = mobileNo;
    _data["type"] = type;
    _data["profile"] = profile;
    _data["company_name"] = companyName;
    _data["designation_name"] = designationName;
    _data["sub_designation_name"] = subDesignationName;
    _data["employee_type_name"] = employeeTypeName;
    _data["working_shift"] = workingShift;
    _data["id"] = id;
    _data["unique_id"] = uniqueId;
    _data["reffer_by"] = refferBy;
    _data["owner_id"] = ownerId;
    _data["user_id"] = userId;
    _data["company_id"] = companyId;
    _data["designation_id"] = designationId;
    _data["department_id"] = departmentId;
    _data["sub_designation_id"] = subDesignationId;
    _data["employment_type_id"] = employmentTypeId;
    _data["working_shift_id"] = workingShiftId;
    _data["shift_start_time"] = shiftStartTime;
    _data["shift_end_time"] = shiftEndTime;
    _data["working_hours"] = workingHours;
    _data["salary"] = salary;
    _data["is_transfered"] = isTransfered;
    _data["joining_date"] = joiningDate;
    _data["employee_code_state"] = employeeCodeState;
    _data["created_by"] = createdBy;
    _data["comp_off"] = compOff;
    _data["carry_forward_count"] = carryForwardCount;
    _data["is_basic"] = isBasic;
    _data["father_name"] = fatherName;
    _data["mother_name"] = motherName;
    _data["alternate_mobile"] = alternateMobile;
    _data["attendance_check_in"] = attendanceCheckIn;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}

class DesignationCount {
  String? name;
  int? employeesCount;

  DesignationCount({this.name, this.employeesCount});

  DesignationCount.fromJson(Map<String, dynamic> json) {
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["employees_count"] is int) {
      employeesCount = json["employees_count"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["employees_count"] = employeesCount;
    return _data;
  }
}