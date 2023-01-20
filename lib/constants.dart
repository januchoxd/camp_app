import 'package:flutter/material.dart';

const activeFieldColour = Colors.white;
const inactiveFieldColour = Color(0xFFD6D6D6);

const headerTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'Audiowide',
);

const ofertaPageTextStyle = TextStyle(
  fontSize: 12.0,
  fontFamily: 'Audiowide',
);

//na dole opis panela np HC | 5BB | FB
const bottomTextPanele = TextStyle(
  fontFamily: 'Audiowide',
  fontSize: 11.0,
  color: Colors.black,
);

const textPozostale = TextStyle(
  fontFamily: 'Audiowide',
  fontSize: 16.0,
  color: Colors.black,
);

//środkowy tekst - ile kWp
const midleTextPanele = TextStyle(
  fontFamily: 'Audiowide',
  fontSize: 22.0,
  color: Colors.black,
);

//zaokrąglenie contenerów
const borderRadiusStyle = BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(10),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10));

//stałe do czatu:
const kSendButtonTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Wpisz tutaj swoją wiadomość',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Color(0xFF141414), width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintStyle: TextStyle(color: Colors.white70),
  hintText: 'Wpisz wartość',
  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white70, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white70, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);

//ustawienia przycisków w menu Screen
var kOutlinedButtonStyl = OutlinedButton.styleFrom(
    fixedSize: Size.fromWidth(300),
    foregroundColor: Colors.white70,
    side: const BorderSide(width: 3, color: Colors.white70),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50));

//odległości pomiędzy np outlinedButton w menu_Screen albo inputami w nowym kliencie
const spaceBetweenOutlindedButtons = 18.00;
