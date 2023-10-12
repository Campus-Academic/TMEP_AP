// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:app_template_v0/interface/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:io';

import 'package:app_template_v0/main.dart';

import 'dart:convert';

void main() async {
  final File file = File('lib/mock/CourseData.json');
  final String jsonString = await file.readAsString();
  final dynamic jsonData = json.decode(jsonString);

  final List<Course> courses = [];

  for (final courseJson in jsonData['courses']) {
    print(courseJson);
  }
}
