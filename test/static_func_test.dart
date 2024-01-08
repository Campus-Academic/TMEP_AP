import 'dart:convert';

import 'package:app_template_v0/domain/models/notification_data.dart';
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
          print(courses.required);
        } // 假設 courseCode 是 Courses 物件的屬性
      });
    });
  });

  testWidgets('Test Case: Notification.fromJson', (WidgetTester tester) async {
    // 用 rootBundle 獲取 json檔案
    rootBundle.loadString("assets/json/mock/Notification.json").then((data) {
      final jsonResult = jsonDecode(data.toString());
      Nontification course = Nontification.fromJson(jsonResult);
      course.notification?.forEach((courses) {
        if (kDebugMode) {
          print(courses.title);
          print(courses.photoLink);
        } // 假設 courseCode 是 Courses 物件的屬性
      });
    });
  });
}
