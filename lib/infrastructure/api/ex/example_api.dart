// conf
import 'package:app_template_v0/config/index.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
// url
import '../../app/index.dart';
import 'constant/url.dart';
// package
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as htmlParser;
// Copyright 2023 The Flutter Authors. All rights reserved.
// Author: ＸＸＸ

/// getClassScheduleEx ................
///
/// Introduction: ................
///
///  * ................
///  * .......
///
///
Future<List<Course>> getClassScheduleEx(String uid, String password) async {
  // 使用常量
  final List<Course> courses = [];

  try {
    // 加载 JSON 数据
    final String data =
        await rootBundle.loadString("assets/json/mock/CourseData.json");

    // 解析 JSON 数据
    final List<dynamic> jsonList = jsonDecode(data);

    // 将解析的数据转换为 Course 对象列表
    List<Course> courseList =
        jsonList.map((json) => Course.fromJson(json)).toList();

    // 将课程列表添加到 courses 中
    courses.addAll(courseList);
  } catch (error) {
    // 处理错误
    if (kDebugMode) {
      print('Error loading or parsing data: $error');
    }
  }

  return courses;
}
