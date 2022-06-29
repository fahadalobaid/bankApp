import 'package:bank_app/models/user.dart';
import 'package:bank_app/services/client.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  late User user;

  void signup(User user) {
    ClientServices().signup(user: user);
  }
}
