import 'package:flutter/material.dart';

import 'app_constant.dart';

AppBar appAppBar(BuildContext context, String title, bool showBackButton) {
  return AppBar(
    //backgroundColor: AppConstant.bgColor,
    title: Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    ),
    centerTitle: true,
  );
}
