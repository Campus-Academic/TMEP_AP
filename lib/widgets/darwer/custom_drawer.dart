import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Your Name"),
            accountEmail: Text("your@email.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("your_profile_image.jpg"),
            ),
          ),
          ListTile(
            title: const Text("Drawer Item 1"),
            onTap: () {
              // 处理Drawer选项1的操作
            },
          ),
          ListTile(
            title: const Text("Drawer Item 2"),
            onTap: () {
              // 处理Drawer选项2的操作
            },
          ),
          // 添加更多Drawer选项
        ],
      ),
    );
  }
}
