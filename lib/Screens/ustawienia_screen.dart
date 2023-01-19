import 'package:flutter/material.dart';
import '../constants.dart';

class Ustawienia extends StatefulWidget {
  const Ustawienia({Key? key}) : super(key: key);

  @override
  State<Ustawienia> createState() => _UstawieniaState();
}

class _UstawieniaState extends State<Ustawienia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ustawienia'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            const Text(
              'Zmień ceny:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            const Card(
              child: ListTile(
                leading: Text('człowiek do 4 roku życia'),
                trailing: Text('10 zł'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Text('człowiek powyżej 10 roku życia'),
                trailing: Text('10 zł'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Text('Namiot 1-2 osobowy'),
                trailing: Text('10 zł'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Text('Namiot 3-4 osobowy'),
                trailing: Text('10 zł'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Text('Namiot wielkogabarytowy'),
                trailing: Text('10 zł'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Text('Namiot ogrodowy'),
                trailing: Text('10 zł'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Text('przyczepa campingowa'),
                trailing: Text('10 zł'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Text('Przyczepa campingowa z przybudówką'),
                trailing: Text('10 zł'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Text('Kamper'),
                trailing: TextButton(
                  child: const Text('10 zł'),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
