import 'package:bank_app/pages/transactions_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/add.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 14, 173),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Welcome",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 30, 14, 173),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 23, 232, 113),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 23, 231, 113),
        child: ListView(children: [
          ListTile(
              title: Text(
                "Sign up",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 30, 14, 173),
                    fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.login),
              onTap: () {
                GoRouter.of(context).push('/signup');
              }),
          ListTile(
            title: Text(
              "Sign in",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 30, 14, 173),
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.how_to_reg),
            onTap: () {
              GoRouter.of(context).push('/signin');
            },
          ),
        ]),
      ),
      body: TransactionPage(),
    );
  }
}
