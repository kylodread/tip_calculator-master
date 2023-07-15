// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// background `color`
///
Color backgroundColor = Color.fromARGB(255, 67, 57, 107);

/// default textStyle for `labels`
///
TextStyle labelText = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 255, 255, 255),
);

Widget background() => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Center(child: SvgPicture.asset('assets/images/nounmoney.svg')),
        ),
        const Expanded(flex: 3, child: SizedBox())
      ],
    );

Widget transparentContainer(double height) => Container(
      height: height,
      width: double.infinity,
      color: Colors.transparent,
    );

BoxDecoration containerDecoration = BoxDecoration(
  color: Color.fromARGB(255, 39, 39, 39),
  borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(25.0),
    topRight: Radius.circular(25.0),
  ),
  boxShadow: [
    BoxShadow(
      color: Color.fromARGB(255, 59, 59, 59).withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: const Offset(0, 3),
    ),
  ],
);

Widget titleDesc(String title, String desc) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          desc,
          style: const TextStyle(color: Color.fromARGB(255, 134, 127, 159)),
        ),
      ],
    );
