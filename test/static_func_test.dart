import 'dart:convert';

import 'package:app_template_v0/infrastructure/app/index.dart';
import 'package:app_template_v0/infrastructure/interface/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

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
}
