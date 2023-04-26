import 'package:flutter/material.dart';
import 'package:untitled/Requests_list.dart';

import 'Homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Homepage()
    );
  }
}
