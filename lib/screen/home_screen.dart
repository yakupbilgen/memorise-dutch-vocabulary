import 'package:flutter/material.dart';

import '../constant/app_constant.dart';
import '../constant/app_appbar.dart';

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
      appBar: appAppBar(context, 'title', false),
      body: Container(
        padding: const EdgeInsets.only(
            left: AppConstant.defaultPadding,
            right: AppConstant.defaultPadding),
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
          color: Colors.orange,
        ),
      ),
    );
  }
}
