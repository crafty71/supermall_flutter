import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("我的"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: TextButton(
        child: const Text("按钮"),
        onPressed: (){
          Navigator.pushNamed(context, '/search');
        },),
    );
  }
}
