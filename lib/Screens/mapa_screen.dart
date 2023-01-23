import 'package:flutter/material.dart';
import '../constants.dart';

class MapaScreen extends StatefulWidget {
  const MapaScreen({Key? key}) : super(key: key);

  @override
  State<MapaScreen> createState() => _MapaScreenState();
}

class _MapaScreenState extends State<MapaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mapa'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/dronsplus.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            primary: false,
            //padding: const EdgeInsets.all(3),
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            crossAxisCount: 2,
            children: <Widget>[
              InkWell(
                splashColor: Colors.green,
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('zamknij ryj'))
                            ],
                            title: Text('wybrałeś pole A1'),
                          ));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.black54,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black54,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black54,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black54,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black54,
              ),
              InkWell(
                splashColor: Colors.green,
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('zamknij ryj'))
                            ],
                            title: Text('wybrałeś pole B3'),
                          ));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.black54,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black54,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black54,
              ),
            ],
          ),
        ));
  }
}
