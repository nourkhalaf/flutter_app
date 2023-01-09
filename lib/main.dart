import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifuture_co/widgets/addressHome.dart';
import 'package:ifuture_co/widgets/contactHome.dart';
import 'package:ifuture_co/widgets/filterHome.dart';
import 'package:ifuture_co/widgets/informationHome.dart';
import 'package:ifuture_co/widgets/myAccountHome.dart';
import 'package:ifuture_co/widgets/ordersHome.dart';
import 'package:ifuture_co/widgets/paymentHome.dart';
import 'package:ifuture_co/widgets/shippingHome.dart';
import 'package:ifuture_co/widgets/cartHome.dart';
import 'package:ifuture_co/widgets/changePassword.dart';
import 'package:ifuture_co/widgets/profileHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Cart Screen',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: OrdersHome(),
    );
  }
}
