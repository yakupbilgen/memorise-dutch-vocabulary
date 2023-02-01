import 'package:flutter/material.dart';
import 'package:memorisedutchvocabulary/constant/app_constant_color.dart';
import 'package:memorisedutchvocabulary/constant/app_constant_text.dart';

import '../constant/app_constant_appbar.dart';
import '../constant/app_contant_size.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appAppBar(context, AppConstantText.appBarTitle, false),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => {StepState.complete},
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
