import 'package:bank_app/models/user.dart';
import 'package:bank_app/services/client.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  late User user;
  late String token;

  void signup(User user) async {
    token = await ClientServices().signup(user: user);
  }
}
