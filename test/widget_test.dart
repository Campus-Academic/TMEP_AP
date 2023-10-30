// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:math';

import 'package:app_template_v0/infrastructure/interface/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:io';

import 'package:app_template_v0/main.dart';

import 'dart:convert';

void main() {
  testWidgets('Test Case: Course.fromJson', (WidgetTester tester) async {
    // 用 rootBundle 獲取 json檔案
    rootBundle.loadString("assets/json/mock/CourseData.json").then((data) {
      final jsonResult = jsonDecode(data.toString());
      Course course = Course.fromJson(jsonResult);
      course.courses?.forEach((courses) {
        if (kDebugMode) {
          print(courses.title);
          print(courses.className);
        } // 假設 courseCode 是 Courses 物件的屬性
      });
    });
  });

  // 其他測試案例可以放在這裡
}
