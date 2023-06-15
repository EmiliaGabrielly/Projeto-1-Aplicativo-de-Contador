import 'package:flutter/material.dart';
import 'package:my_app/screens/screens.dart';

main() => runApp(const ContadorApp());

class ContadorApp extends StatefulWidget {
  const ContadorApp({super.key});

  @override
  _ContadorAppState createState() => _ContadorAppState();
}

class _ContadorAppState extends State<ContadorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const ContadorScreens(
          title: 'contador app',
        ));
  }
}
