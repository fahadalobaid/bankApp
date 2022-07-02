import 'package:bank_app/models/user.dart';
import 'package:dio/dio.dart';

class ClientServices {
  final _dio = Dio();

  Future<String> signup({required User user}) async {
    late String token;
    try {
      Response response = await _dio.post(
          'https://coded-bank-api.herokuapp.com/signup',
          data: user.toJson());
      token = response.data.token;
    } on DioError catch (error) {
      print("error");
    }
    return token;
  }
}
