import 'package:flutter/material.dart';

class LoginPage1 extends StatefulWidget {
  LoginPage1({Key key}) : super(key: key);

  @override
  _LoginPage1State createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
        style: TextStyle(
          fontSize: 20.0,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ));
    final passwordField = TextField(
        obscureText: true,
        style: TextStyle(
          fontSize: 20.0,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ));
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        onPressed: (){},
        child: Text("Login",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold)
        )
      )
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 200.0,
                        child: Image.asset("assets/image/logo.png",height:200,width:200)),
                    SizedBox(
                      height: 48,
                    ),
                    emailField,
                    SizedBox(
                      height: 24,
                    ),
                    passwordField,
                      SizedBox(
                      height: 24,
                    ),
                    loginButton
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
