// login_form.dart

import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final void Function(String username, String password) onLogin;

  const LoginForm({Key? key, required this.onLogin}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              labelText: 'Username',
              hintText: 'Enter your username',
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
            ),
            obscureText: true, // 隐藏密码
          ),
          const SizedBox(height: 16.0),

          // login btn. =================================================================

          Container(
            width: double.infinity, // 让按钮占满父级宽度
            height: 50.0,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(69, 111, 232, 1),
                  Color.fromRGBO(25, 176, 236, 1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: ElevatedButton(
              onPressed: () {
                // 获取用户名和密码
                String username = _usernameController.text;
                String password = _passwordController.text;

                // 通过回调函数将值传递回父级
                widget.onLogin(username, password);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent, // 设置为透明，让Container的背景渐变生效
                elevation: 0, // 移除按钮默认的阴影
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              child: const Text('登錄'),
            ),
          ),
        ],
      ),
    );
  }
}
