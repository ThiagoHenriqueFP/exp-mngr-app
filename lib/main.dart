import 'package:exp_mng_app/ButtonRow.dart';
import 'package:exp_mng_app/MetricsCard.dart';
import 'package:flutter/material.dart';

import 'StatsCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: const Color(0x00093c33))),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 60, 51),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width - 60, 12, 12, 0),
                  child: const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 48,
                  ),
                ),
              ),
              const ButtonRow(),
              const StatsCard(),
              const MetricsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
