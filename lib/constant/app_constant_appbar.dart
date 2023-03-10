import 'package:flutter/material.dart';

import '../screen/information_screen.dart';
import 'app_constant_color.dart';
import 'app_contant_size.dart';

AppBar appAppBar(
  BuildContext context,
  String title,
  bool showBackButton,
  bool showActionButton,
) {
  return AppBar(
    backgroundColor: AppConstantColor.bgColor,
    leading: showBackButton
        ? Visibility(
            visible: true,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: AppConstantColor.iconColor,
                size: AppConstantSize.iconSize,
              ),
            ),
          )
        : null,
    title: Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(fontWeight: FontWeight.bold)
          .copyWith(color: AppConstantColor.textColor),
    ),
    centerTitle: true,
    actions: <Widget>[
      if (showActionButton)
        Visibility(
          child: IconButton(
            //TODO: function
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const InformationScreen()),
            ),
            icon: const Icon(
              Icons.info,
              color: AppConstantColor.iconColor,
              size: AppConstantSize.iconSize,
            ),
          ),
        ),
    ],
  );
}
