import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "A Shadow Button",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              // fontStyle:FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff009688),
        ),
        body: Center(
            child: GestureDetector(
          onTap: () {
            print("Button Tap");
          },
          child: Container(
            height: 80,
            alignment: Alignment.center,
            width: 250,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20), bottom: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 3),
                  color: Color(0xff009688),
                  spreadRadius: 9,
                  blurRadius: 20,
                ),
              ],
            ),
            child: Text(
              "Tap",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ),
        )),
      ),
    ),
  );
}
