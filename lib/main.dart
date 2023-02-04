import 'package:flutter/material.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomeScren(),
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
    ),
  );
}
