import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TonisKleineSeite(),
    );
  }
}

class TonisKleineSeite extends StatefulWidget {
  @override
  _TonisKleineSeiteState createState() => _TonisKleineSeiteState();
}

class _TonisKleineSeiteState extends State<TonisKleineSeite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tonis super Seite!"),
      ),
      body: Column(
        children: <Widget>[
          Image.network("https://www.planet-wissen.de/natur/voegel/pinguine/intropinguinjungkaisergjpg100~_v-gseapremiumxl.jpg"),
          buildRow("Name", "Toni"),
          buildRow("Alter", "20"),
          buildRow("Wohnort", "Lauterbach"),
          buildRow("Hobbies", "Chor, Spielen"),
        ],
      ),
    );
  }

  Row buildRow(argument, value) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              argument + ": ",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        );
  }
}
