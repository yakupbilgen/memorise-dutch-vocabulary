import 'package:flutter/material.dart';

import '../constant/app_appbar.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, 'title', false),
      body: Center(
        child: Text(
          'Memorise Dutch Vocabulary',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () => {StepState.complete}),
    );
  }
}
