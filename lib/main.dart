import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  var totMoney;
  var spendings;
  var savings;
  var investments;
  var charity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Money Mate")),
      body: Column(
        children: [
          Container(
            //how much?
            child: Column(children: [
              Text(
                "What is your current balance?",
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                  onChanged: (value) {
                    totMoney = value;
                  },
                  textAlign: TextAlign.center,
                  decoration: new InputDecoration(
                      hintText: 'Ex: 2000',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                      )))
            ]),
          ),
          Row(
            //categorieskscsc
            children: [Container(), Container(), Container(), Container()],
          ),
          //analysis
          Row(children: [Container(), Container()]),
        ],
      ),
    );
  }
}
