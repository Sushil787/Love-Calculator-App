import 'package:flutter/material.dart';
import 'love_calc_algo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String your = "";
  String yourLovedOne = "";
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  String outputlove = " ";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blueGrey,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Valintino",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      your,
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 60.0,
                    ),
                    Text(
                      yourLovedOne,
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: TextFormField(
                    controller: txt1,
                    onChanged: (value) {
                      setState(() {
                        your = value;
                      });
                    },
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "Input name",
                        labelText: "Enter your name ",
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: TextFormField(
                    controller: txt2,
                    onChanged: (value) {
                      setState(() {
                        yourLovedOne = value;
                      });
                    },
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "loved one name",
                        labelText: "Enter your loved one name ",
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "your love $outputlove ",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      outputlove = checkL(txt1.text, txt2.text);
                    });
                  },
                  child: const Text("Calculate"),
                  // style: ElevatedButton.styleFrom(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
