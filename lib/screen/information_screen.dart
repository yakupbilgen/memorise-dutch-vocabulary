import 'package:flutter/material.dart';
import 'package:memorisedutchvocabulary/constant/app_constant_appbar.dart';
import 'package:memorisedutchvocabulary/constant/app_constant_color.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, 'About Application', true, false),
      backgroundColor: AppConstantColor.bgColor,
      body: const Center(
        child: Text('Information Screen'),
      ),
    );
  }
}
