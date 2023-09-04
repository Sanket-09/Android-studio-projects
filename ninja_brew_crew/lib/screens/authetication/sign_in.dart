import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ninja_brew_crew/Services/auth.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to the brew crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical:20 , horizontal:50),
        child: RaisedButton(
          child: Text('sign in anon'),
          onPressed: () async {
          dynamic result =  await _auth.signInAnon();
          if (result == null)
            print ('error signing in');
          else
            print ('task successful');
          print(result);
          },
        ),
      ),

    );
  }
}
