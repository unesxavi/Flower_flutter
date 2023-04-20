import 'package:flutter/material.dart';

const flDecorationField = InputDecoration(
  hintText: "",
  hintStyle: TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
    ),
  ),
  filled: true,
  contentPadding: EdgeInsets.all(15),
);
