import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constant/app_constant_appbar.dart';
import '../constant/app_constant_color.dart';
import '../constant/app_constant_text.dart';
import '../constant/app_contant_size.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  late var catalogData;

  Future<String> loadData() async {
    var data = await rootBundle.loadString("assets/json/vocabulary.json");
    setState(() {
      catalogData = json.decode(data);
    });
    return "success";
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;

    var futureBuilder = FutureBuilder(
        future: loadData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            return Center(
                child: Text(catalogData.toString(), style: const TextStyle()));
          } else {
            return Container();
          }
        });

    return Scaffold(
      appBar: appAppBar(context, AppConstantText.appBarTitle, false, true),
      backgroundColor: AppConstantColor.bgColor,
      body: Container(
        padding: const EdgeInsets.only(
            left: AppConstantSize.defaultPadding,
            right: AppConstantSize.defaultPadding),
        child: Center(
          child: Text(
              'witdh => ${deviceSize.width}\nheight => ${deviceSize.height}',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.orange)),
        ),
      ),
      // body: Center(
      //   child: Text(catalogData.toString()),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint(catalogData.toString());
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
