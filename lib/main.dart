import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

Widget buildButton(IconData icon, String label) {
  Color color = Colors.blue;
  return Column(
    children: [
      Icon(
        icon,
        color: color,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  );
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    var titleSection = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                ),
                const Text(
                  "Deep Sea",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                ),
                Text(
                  "That Will Soon Explore the Ocean Floor",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text("45"),
        ],
      ),
    );

    var buttonSection = Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButton(Icons.call, 'CALL'),
        buildButton(Icons.near_me, 'ROUTE'),
        buildButton(Icons.share, 'SHARE'),
      ],
    ));

    var textSection = Container(
      child: const Padding(
        padding: EdgeInsets.all(25.0),
        child: Text(
          ''' 
   The deep sea or deep layer is the lowest layer in the ocean, existing below the thermocline and above the seabed, at a depth of 1000 fathoms or more.
        ''',
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              "images/a.jpg",
              width: 600,
              height: 250,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
