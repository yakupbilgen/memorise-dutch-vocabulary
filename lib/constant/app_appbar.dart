import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_size.dart';

AppBar appAppBar(
  BuildContext context,
  String title,
  bool showBackButton,
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
      IconButton(
        //TODO: function
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.warning_amber,
          color: AppConstantColor.iconColor,
          size: AppConstantSize.iconSize,
        ),
      ),
    ],
  );
}
