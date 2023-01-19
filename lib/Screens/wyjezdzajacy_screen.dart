import 'package:flutter/material.dart';
import '../constants.dart';

class WyjezdzajacyScreen extends StatelessWidget {
  const WyjezdzajacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informacje o wyjeżdżających'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Center(child: Text('Lista osób do wyjebania z campingu:')),
          Card()
        ],
      ),
    );
  }
}
