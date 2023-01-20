import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'menu_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  String email = '';
  String password = '';
  String loginInfo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ape.png"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text('Camp App',
                      style: GoogleFonts.roboto(
                          fontSize: 48, color: Colors.white70)),
                ),
                const SizedBox(
                  height: 68.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                  onChanged: (value) {
                    email = value;
                    setState(() {
                      EmailValidator.validate(email)
                          ? loginInfo = ''
                          : loginInfo = 'Niepoprawny format e-mail';
                    });
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      filled: true,
                      fillColor: Colors.black54,
                      hintText: 'e-mail',
                      prefixIcon: EmailValidator.validate(email)
                          ? const Icon(Icons.mail_outline_outlined,
                              color: Colors.green)
                          : const Icon(Icons.mail_outline_outlined,
                              color: Colors.redAccent)),
                ),
                const SizedBox(
                  height: 16.0,
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
                      filled: true,
                      fillColor: Colors.black54,
                      hintText: 'hasło',
                      prefixIcon: password == ''
                          ? const Icon(Icons.lock_outline, color: Colors.green)
                          : const Icon(Icons.lock_outline,
                              color: Colors.redAccent)),
                ),
                const SizedBox(height: spaceBetweenOutlindedButtons),
                Center(
                  child: Text(
                    '$loginInfo',
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 16,
                        background: Paint()
                          ..strokeWidth = 20.0
                          ..color = Colors.black45
                          ..style = PaintingStyle.stroke
                          ..strokeJoin = StrokeJoin.round),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                OutlinedButton(
                    style: kOutlinedButtonStyl.copyWith(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black54)),
                    onPressed: () async {
                      if (email != '' || password != '') {
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
                            setState(() {
                              loginInfo =
                                  ' Użytkownik z tym e-mail nie istnieje';
                            });
                            print('No user found for that email.');
                          } else if (e.code == 'wrong-password') {
                            setState(() {
                              loginInfo = 'Niepoprawne hasło';
                            });
                            print('Wrong password provided for that user.');
                          }
                        }
                      } else {
                        (loginInfo = 'uzupełnij pola');
                      }
                    },
                    child: const Text(
                      'Zaloguj',
                      style: TextStyle(color: Colors.yellowAccent),
                    )),
                TextButton(
                  child: const Text(
                    'Nie pamietam hasła!',
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                  onPressed: () {
                    print('email - $email  haslo - $password');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
