import 'package:flutter/material.dart';
import 'package:latihan_1/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Widget MyText(String label, bool isObsecure) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        obscureText: isObsecure,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text("Login")) ,
      body: Center(
        child: Container (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText("Username", false),
            MyText("Password", true),

              Row(
                children: [
                  ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                            context,
                          MaterialPageRoute(builder: (context) => HomePage())
                        );
                      },
                      child: Text("Login"),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
