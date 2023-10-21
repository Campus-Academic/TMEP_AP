import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart'; // 导入SharedPreferences

class AuthBloc extends Bloc<String, bool> {
  AuthBloc() : super(false);

  Stream<bool> mapEventToState(String event) async* {
    if (event == "user") {
      // 用户登录时保存用户名到本地存储
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('username', event);

      yield true;
    } else {
      yield false;
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: BlocProvider(
      create: (context) => AuthBloc(),
      child: LoginPage(),
    ),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the Login Page!',
              style: TextStyle(fontSize: 24.0),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            TextButton(
              onPressed: () async {
                final username = usernameController.text;
                context.read<AuthBloc>().add(username);

                // 保存用户名后，你可以在需要的地方再次检索它
                final prefs = await SharedPreferences.getInstance();
                final savedUsername = prefs.getString('username');
                print('Saved username: $savedUsername');

                Get.offAllNamed('/home');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
