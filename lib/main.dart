import 'package:app_template_v0/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const APP());
}

class APP extends StatelessWidget {
  const APP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: AppLayout(), // 使用 AppLayout 作为根页面
    );
  }
}
