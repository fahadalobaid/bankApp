import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  File? _image;

  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign up"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text("Sign Up"),
            TextField(
              decoration: const InputDecoration(hintText: 'Username'),
              controller: usernameController,
            ),
            TextField(
              decoration: const InputDecoration(hintText: 'Password'),
              controller: passwordController,
              obscureText: true,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () async {
                    final XFile? image =
                        await _picker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      _image = File(image!.path);
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(color: Colors.blue[200]),
                    child: _image != null
                        ? Image.file(
                            _image!,
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.fitHeight,
                          )
                        : Container(
                            decoration: BoxDecoration(color: Colors.blue[200]),
                            width: 200,
                            height: 200,
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.grey[800],
                            ),
                          ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Image"),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Sign Up"),
            )
          ],
        ),
      ),
    );
  }
}
