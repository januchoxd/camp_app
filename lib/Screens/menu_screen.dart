import 'package:flutter/material.dart';
import 'nowy_klient_screen.dart';
import 'baza_danych_screen.dart';
import 'wyjezdzajacy_screen.dart';
import 'ustawienia_screen.dart';
import '../constants.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Menu Głowne'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                style: kOutlinedButtonStyl,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NowyKlientScreen()),
                  );
                },
                child: const Text('Nowy Klient')),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            OutlinedButton(
                style: kOutlinedButtonStyl,
                onPressed: () {},
                child: const Text('Przedłuż Pobyt')),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            OutlinedButton(
                style: kOutlinedButtonStyl,
                onPressed: () {},
                child: const Text('Statystyki')),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            OutlinedButton(
                style: kOutlinedButtonStyl,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BazaDanychScreen()),
                  );
                },
                child: const Text('Baza Danych')),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            OutlinedButton(
                style: kOutlinedButtonStyl,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ustawienia()),
                  );
                },
                child: const Text('Ustawienia')),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            OutlinedButton(
                style: kOutlinedButtonStyl,
                onPressed: () {},
                child: const Text('Mapa Campingu')),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            OutlinedButton(
                style: kOutlinedButtonStyl,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WyjezdzajacyScreen()),
                  );
                },
                child: const Text('Informacje o wyjeżdżających')),
          ],
        ),
      ),
    );
  }
}

var aStyle = OutlinedButton.styleFrom(
    fixedSize: const Size.fromWidth(300),
    foregroundColor: Colors.white,
    side: const BorderSide(width: 3, color: Colors.white),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50));
