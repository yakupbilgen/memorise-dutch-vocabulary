import 'package:flutter/material.dart';

AppBar appAppBar(BuildContext context, String title, bool showBackButton) {
  return AppBar(
    title: Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
  );
}
