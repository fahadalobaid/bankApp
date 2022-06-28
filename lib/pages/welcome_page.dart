import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size;
   
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("WelcomePage")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Sign up",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              trailing: Icon(Icons.login),
              onTap: () { GoRouter.of(context).push('/signup');}
            ),
            ListTile(
              title: Text(
                "Sign in",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              trailing: Icon(Icons.how_to_reg),
              onTap: () {},
            ),Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/background.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
             top: 0,
            left: 0,
            child: Image.asset("assets/images/background.png"),width: size.width * 0.3, )
        ],
      ),
    )
          ],
        ),
      ),
     
    );
  }
}
