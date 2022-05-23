import 'package:flutter/material.dart';
import 'package:pofato/constants/colors.dart' as color;

Widget cashInfo(String money) {
  return Container(
    decoration: BoxDecoration(
      color: color.kBackgroundColor,
      borderRadius: BorderRadius.circular(8),
    ),
    margin: const EdgeInsets.fromLTRB(15, 20, 15, 10),
    height: 70,
    width: 370,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "\$ $money",
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
        const Icon(
          Icons.money,
          color: Colors.white,
          size: 30,
        )
      ],
    ),
  );
}

Widget menuInfo() {
  return Container(
    decoration: BoxDecoration(
      color: color.kBackgroundColor,
      borderRadius: BorderRadius.circular(8),
    ),
    margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
    height: 70,
    width: 370,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Icon(
          Icons.request_page,
          color: Colors.white,
          size: 30,
        ),
        Icon(
          Icons.send,
          color: Colors.white,
          size: 30,
        ),
        Icon(
          Icons.qr_code_2,
          color: Colors.white,
          size: 30,
        ),
      ],
    ),
  );
}
