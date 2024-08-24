class EmployeeDataModel {
  late int id ;
  String? employeeName;
  int? employeeSalary;
  int? employeeAge;

  EmployeeDataModel({
    required this.id,
    this.employeeName,
    this.employeeSalary,
    this.employeeAge,
  });

  EmployeeDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    employeeName = json['employee_name'];
    employeeSalary = json['employee_salary'];
    employeeAge = json['employee_age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['employee_name'] = employeeName;
    data['employee_salary'] = employeeSalary;
    data['employee_age'] = employeeAge;
    return data;
  }
}
