import 'package:dio/dio.dart';
import 'package:optical/ass4/employee_list_api/Model/EmployeeDataModel.dart';

class GetEmployeesData {
  final dio = Dio();
  //final String baseUrl = "https://dummy.restapiexample.com/api/v1";
  Future<List<EmployeeDataModel>> fetchEmployees() async {
    try {
      final Response response =
          await dio.get('https://dummy.restapiexample.com/api/v1/employees');
      if (response.statusCode == 200) {
        List<dynamic> data = response.data['data'];
        return data
            .map((employee) => EmployeeDataModel.fromJson(employee))
            .toList();
      } else {
        throw Exception('Failed to fetch employees');
      }
    } catch (e) {
      print(e);
      throw Exception('Failed to fetch employees');
    }
  }

  Future<List<EmployeeDataModel>> createData() async {
    try {
      final Response response = await dio.post(
        'https://dummy.restapiexample.com/api/v1/create',
        data: {
          'title':'Flutter Rest API',
          'body':'Flutter Rest API',
          'userId':1,
        },
        queryParameters: {
          'Content-Type':'application/json; charset=utf-8',
        },
      );
      if (response.statusCode == 200) {
        return fetchEmployees();
      } else {
        throw Exception('Failed to Create Data');
      }
    } catch (e) {
      print(e);
      throw Exception('Failed to Create Data');
    }
  }

  Future<List<EmployeeDataModel>> updateData(int id) async {
    try {
      final Response response = await dio.put(
        'https://dummy.restapiexample.com/api/v1/update/21',
        data: {
          'title':'Flutter Rest API',
          'body':'Flutter Rest API',
          'userId':1,
        },
        queryParameters: {
          'Content-Type':'application/json; charset=utf-8',
        },
      );
      if (response.statusCode == 200) {
        return fetchEmployees();
      } else {
        throw Exception('Failed to Create Data');
      }
    } catch (e) {
      print(e);
      throw Exception('Failed to Create Data');
    }
  }


  Future<List<EmployeeDataModel>> deleteData(int id) async {
    try {
      final Response response = await dio.delete(
        'https://dummy.restapiexample.com/api/v1/delete/$id',
      );
      if (response.statusCode == 200) {
        return fetchEmployees();
      } else {
        throw Exception('Failed to Delete Data');
      }
    } catch (e) {
      print(e);
      throw Exception('Failed to Delete Data');
    }
  }



}
