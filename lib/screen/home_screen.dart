import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constant/app_constant_appbar.dart';
import '../constant/app_constant_color.dart';
import '../constant/app_constant_text.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  List _myVocabulary = [];

  Future<void> readJson() async {
    var response = await rootBundle.loadString('assets/json/vocabulary.json');
    final data = await json.decode(response);

    setState(() {
      _myVocabulary = data["vocabulary"];
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    //final Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appAppBar(context, AppConstantText.appBarTitle, false, true),
      backgroundColor: AppConstantColor.bgColor,
      body: _myVocabulary.isNotEmpty
          ? ListView.builder(
              itemCount: _myVocabulary.length,
              itemBuilder: (context, index) {
                return Card(
                  key: ValueKey(_myVocabulary[index]['id']),
                  margin: const EdgeInsets.all(12.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: AppConstantColor.iconColor,
                      child: Text(_myVocabulary[index]["id"].toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(fontWeight: FontWeight.bold)),
                    ),
                    title: Text(_myVocabulary[index]["dutch"]),
                    subtitle: Text(_myVocabulary[index]["turkish"]),
                  ),
                );
              })
          : const Center(
              child: Text("Loading data"),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("click success");
          debugPrint('${_myVocabulary.length}');
          debugPrint("click success");
        },
        backgroundColor: Colors.orange,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
