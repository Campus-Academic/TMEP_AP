// conf
import 'package:app_template_v0/config/index.dart';
// interface
import 'package:app_template_v0/interface/index.dart';
// url
import 'constant/url.dart';
// package
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as htmlParser;

Future<List<Course>> get_class_schedule_ex(String uid, String password) async {
  // 使用conf 裡面的常數
  final List<Course> courses = [];

  // TODO: 加入其他邏輯 .....

  return courses;
}
