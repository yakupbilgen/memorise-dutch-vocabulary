import 'package:flutter/material.dart';
import 'package:memorisedutchvocabulary/screen/home_screen.dart';

void main() {
  runApp(MaterialApp(
    home: const HomeScren(),
    theme: ThemeData(useMaterial3: false),
    debugShowCheckedModeBanner: false,
  ));
}
