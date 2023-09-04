import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in anon


   Future signInAnon() async {
     try {
      var result = await _auth.signInAnonymously() ;
      var user = result.user;
       return user;
     }
     catch(e){
       print(e.toString());
       return null;

     }

   }

  //email and pass



  //register with email and pass


  //logout



}