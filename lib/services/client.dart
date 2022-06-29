import 'package:bank_app/models/user.dart';
import 'package:dio/dio.dart';

class ClientServices {
  final _dio = Dio();

  void signup({required User user}) async {
    Response response = await _dio.post(
        'https://coded-bank-api.herokuapp.com/signup',
        data: user.toJson());
  }
}
