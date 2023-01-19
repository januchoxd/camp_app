//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'menu_screen.dart';

//na probe 2 zmiana gita
//tera tutaj

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  //final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'e-mail',
                    prefixIcon: const Icon(Icons.mail_outline_outlined,
                        color: Colors.white)),
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'hasło',
                    prefixIcon:
                        const Icon(Icons.lock_outline, color: Colors.white)),
              ),
              TextButton(
                child: const Text(
                  'Nie pamietam hasła!',
                  style: TextStyle(color: Colors.white60),
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 24.0,
              ),
              OutlinedButton(
                  style: kOutlinedButtonStyl,
                  onPressed: () async {
                    try {
                      final credential = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: email, password: password);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MenuScreen()));
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                  },
                  child: const Text('Zaloguj'))
            ],
          ),
        ),
      ),
    );
  }
}
