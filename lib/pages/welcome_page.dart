import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WelcomePage")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Sign up",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              trailing: Icon(Icons.login),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Sign in",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              trailing: Icon(Icons.how_to_reg),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
