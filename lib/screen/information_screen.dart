import 'package:flutter/material.dart';

import '../constant/app_constant_appbar.dart';
import '../constant/app_constant_color.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, 'About Application', true, false),
      backgroundColor: AppConstantColor.bgColor,
      body: const Center(),
    );
  }
}
