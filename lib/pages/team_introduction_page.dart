import 'package:flutter/material.dart';

class TeamIntroductionPage extends StatelessWidget {
  const TeamIntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('團隊介紹'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 在這裡添加你的團隊介紹內容，例如團隊照片、成員信息、簡介等
            Text(
              '歡迎訪問我們的團隊介紹頁面。',
              style: TextStyle(fontSize: 18.0),
            ),
            // 這裡可以添加更多的團隊介紹內容
          ],
        ),
      ),
    );
  }
}
