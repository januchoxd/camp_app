import 'package:flutter/material.dart';
import '../constants.dart';

class BazaDanychScreen extends StatelessWidget {
  const BazaDanychScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baza Danych'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text('Wpisz imie, adres lub inne dane klienta:'),
          TextField(
            keyboardType: TextInputType.text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Wyszukaj klienta',
                prefixIcon: Icon(Icons.search_outlined, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
