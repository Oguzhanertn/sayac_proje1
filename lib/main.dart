import 'package:flutter/material.dart';

void main() {
  runApp(const Test());
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int value = 0; // Değişken ekledik
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "SAYAÇ",
            style: TextStyle(fontSize: 30),
          ), // Bara yazı yazar
          centerTitle: true, // Yazıyı ortalar
          backgroundColor: Colors.lightBlueAccent, // Barın rengini değiştirir
        ), // Yukarıya bar koyar

        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Yazıyı ortaya alır
          children: [
            Text(
              value.toString(),
              style: TextStyle(fontSize: 80),
            ), // Ekrana değişken değerini yazar
            ElevatedButton(
              onPressed: () {
                setState(() {
                  value = value + 1;
                }); // Tılandıkça ekranda yazan sayıyı arttırmak için
              },
              child: const Text(
                "Tıkla",
                style: TextStyle(fontSize: 40),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 75), // Buton boyutunu burada ayarlayın
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  value = 0;
                }); // Tılandıkça ekranda yazan sayıyı arttırmak için
              },
              child: const Text("Sıfırla"),
            )
          ],
        )),
      ),
    );
  }
}
