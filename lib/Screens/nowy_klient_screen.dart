import 'package:flutter/material.dart';
import '../constants.dart';

class NowyKlientScreen extends StatefulWidget {
  const NowyKlientScreen({Key? key}) : super(key: key);

  @override
  State<NowyKlientScreen> createState() => _NowyKlientScreenState();
}

class _NowyKlientScreenState extends State<NowyKlientScreen> {
  //czas do pickera daty
  DateTimeRange selectedDateRange =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());

  //stałe
  int liczbaDoroslych = 0;
  int liczbaDzieci = 0;
  //namioty
  int liczbaNamS = 0;
  int liczbaNamM = 0;
  int liczbaNamL = 0;
  int liczbaNamXL = 0;
  //przyczepy i kampery
  int liczbaPrzyczep = 0;
  int liczbaPrzyczepZPrzyb = 0;
  int liczbaKampery = 0;
  //pojazdy
  int liczbaSamochod = 0;
  int liczbaBus = 0;
  int liczbaMotocykl = 0;
  //pozostałe
  int liczbaPrad = 0;
  int liczbaPies = 0;
  //wynajem przyczep i domkow
  int liczbaPrzyczepaTrzyOsobowa = 0;
  int liczbaPrzyczepaCzteroOsobowa = 0;
  int liczbaDomekHolenderski = 0;

  //cena testowa
  int cenaRazem = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nowy Klient'),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            TextField(
              keyboardType: TextInputType.name,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'imię',
                  prefixIcon: const Icon(Icons.person_outline_outlined,
                      color: Colors.white)),
            ),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            TextField(
              keyboardType: TextInputType.name,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'nazwisko',
                  prefixIcon: const Icon(Icons.person_outline_outlined,
                      color: Colors.white)),
            ),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            TextField(
              keyboardType: TextInputType.name,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'adres',
                  prefixIcon:
                      const Icon(Icons.house_outlined, color: Colors.white)),
            ),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Numer Telefonu',
                  prefixIcon: const Icon(Icons.phone_android_outlined,
                      color: Colors.white)),
            ),
            const SizedBox(
              height: 30,
            ),

            // Tutaj Termin pobytu - wybór daty od do oraz liczy ile dni
            const Text(
              'Termin Pobytu:',
              style: TextStyle(fontSize: 18),
            ),
            TextButton(
                onPressed: () async {
                  final DateTimeRange? dateTimeRange =
                      await showDateRangePicker(
                          context: context,
                          firstDate: DateTime(2023),
                          lastDate: DateTime(2030));
                  if (dateTimeRange != null) {
                    setState(() {
                      selectedDateRange = dateTimeRange;
                    });
                  }
                },
                child: Text(
                  'Od: ${selectedDateRange.start.day}-${selectedDateRange.start.month}-${selectedDateRange.start.year}      Do:  ${selectedDateRange.end.day}-${selectedDateRange.end.month}-${selectedDateRange.end.year}',
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                )),
            Text(
              'Liczba Dni: ${selectedDateRange.duration.inDays}',
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              //height: 3,
              color: Colors.white,
              thickness: 1,
              indent: 60,
              endIndent: 60,
            ),
            //Cards osoby powyżej 10 roku życia
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            const Text(
              'Człowieki',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),

            //
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaDoroslych != 0) {
                        liczbaDoroslych--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaDoroslych++;
                    });
                  },
                ),
                title: const Text('Liczba osób powyżej 10 roku życia'),
                subtitle: Text('Ilość: $liczbaDoroslych'),
              ),
            ),
            //Cards osoby do 4 roku życia
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaDzieci != 0) {
                        liczbaDzieci--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaDzieci++;
                    });
                  },
                ),
                title: const Text('Liczba dzieci od 4 do 10 roku życia'),
                subtitle: Text('Ilość: $liczbaDzieci'),
              ),
            ),
            //Namioty
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            const Text(
              'Namioty',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaNamS != 0) {
                        liczbaNamS--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaNamS++;
                    });
                  },
                ),
                title: const Text('Namiot 1-2 osobowy'),
                subtitle: Text('Ilość: $liczbaNamS'),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaNamM != 0) {
                        liczbaNamM--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaNamM++;
                    });
                  },
                ),
                title: const Text('Namiot 3-4 osobowy'),
                subtitle: Text('Ilość: $liczbaNamM'),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaNamL != 0) {
                        liczbaNamL--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaNamL++;
                    });
                  },
                ),
                title: const Text('Namiot 3-4 osobowy'),
                subtitle: Text('Ilość: $liczbaNamL'),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaNamXL != 0) {
                        liczbaNamXL--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaNamXL++;
                    });
                  },
                ),
                title: const Text('Namiot ogrodowy'),
                subtitle: Text('Ilość: $liczbaNamXL'),
              ),
            ),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            const Text(
              'Przyczepy i Kampery',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaPrzyczep != 0) {
                        liczbaPrzyczep--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaPrzyczep++;
                    });
                  },
                ),
                title: const Text('Przyczepa Kempingowa'),
                subtitle: Text('Ilość: $liczbaPrzyczep'),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaPrzyczepZPrzyb != 0) {
                        liczbaPrzyczepZPrzyb--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaPrzyczepZPrzyb++;
                    });
                  },
                ),
                title: const Text('Przyczepa Kempingowa z Przybudówką'),
                subtitle: Text('Ilość: $liczbaPrzyczepZPrzyb'),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaKampery != 0) {
                        liczbaKampery--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaKampery++;
                    });
                  },
                ),
                title: const Text('Kamper'),
                subtitle: Text('Ilość: $liczbaKampery'),
              ),
            ),

            /////////////////////////////////////////////////////////////
            //Pojazdy

            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            const Text(
              'Pojazdy',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaSamochod != 0) {
                        liczbaSamochod--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaSamochod++;
                    });
                  },
                ),
                title: const Text('Samochód 🚗'),
                subtitle: Text('Ilość: $liczbaSamochod'),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaBus != 0) {
                        liczbaBus--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaBus++;
                    });
                  },
                ),
                title: const Text('Bus 🚌'),
                subtitle: Text('Ilość: $liczbaBus'),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaMotocykl != 0) {
                        liczbaMotocykl--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaMotocykl++;
                    });
                  },
                ),
                title: const Text('Motocykl 🏍️'),
                subtitle: Text('Ilość: $liczbaMotocykl'),
              ),
            ),

            /////////////////////////////////////////////////////////////
            //Pozostałe

            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            const Text(
              'Pozostałe',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaPrad != 0) {
                        liczbaPrad--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaPrad++;
                    });
                  },
                ),
                title: const Text('Prąd 🔌'),
                subtitle: Text('Ilość: $liczbaPrad'),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaPies != 0) {
                        liczbaPies--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaPies++;
                    });
                  },
                ),
                title: const Text('Pies 🦮'),
                subtitle: Text('Ilość: $liczbaPies hauhau'),
              ),
            ),

            /////////////////////////////////////////////////////////////
            //Wynajem Przyczep i domków

            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            const Text(
              'Wynajem Przyczep i domków',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaPrzyczepaTrzyOsobowa != 0) {
                        liczbaPrzyczepaTrzyOsobowa--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaPrzyczepaTrzyOsobowa++;
                    });
                  },
                ),
                title: const Text('Wynajem przyczepy 3-osobowej'),
                subtitle: Text('Ilość: $liczbaPrzyczepaTrzyOsobowa'),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaPrzyczepaCzteroOsobowa != 0) {
                        liczbaPrzyczepaCzteroOsobowa--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaPrzyczepaCzteroOsobowa++;
                    });
                  },
                ),
                title: const Text('Wynajem przyczepy 4-osobowej'),
                subtitle: Text('Ilość: $liczbaPrzyczepaCzteroOsobowa '),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (liczbaDomekHolenderski != 0) {
                        liczbaDomekHolenderski--;
                      }
                    });
                  },
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      liczbaDomekHolenderski++;
                    });
                  },
                ),
                title: const Text('Wynajem domku holenderskiego'),
                subtitle: Text('Ilość: $liczbaDomekHolenderski '),
              ),
            ),

            // Koniec Kart
            // Przyciski akcji

            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            const Text(
              'Cena za wszystko: ',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$cenaRazem zł ',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: spaceBetweenOutlindedButtons,
            ),
            OutlinedButton(
                style: kOutlinedButtonStyl,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => NowyKlientScreen()),
                  // );
                },
                child: const Text('Zapisz Pobyt')),
          ],
        ),
      )),
    );
  }
}
