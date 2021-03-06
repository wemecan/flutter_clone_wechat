import 'package:flutter/material.dart';

import './home/home_screen.dart';
import 'constants.dart' show AppColors;
import 'dart:io';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    title: '微信',
    home: HomeScreen(),
    theme: ThemeData.light().copyWith(
        primaryColor: Color(AppColors.AppBarColor),
        cardColor: Color(AppColors.AppBarColor)),
  ));

  if (Platform.isAndroid) {
// 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  };
}
