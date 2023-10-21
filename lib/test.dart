// import 'package:app_template_v0/bloc/auth_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(MaterialApp(
//     home: BlocProvider(
//       create: (context) => AuthBloc(),
//       child: MyApp(),
//     ),
//   ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Authentication Example'),
//       ),
//       body: BlocBuilder<AuthBloc, AuthBlocState>(
//         builder: (context, state) {
//           if (state is AuthBlocInitial) {
//             return const Center(
//               child: Text('Not Logged In'),
//             );
//           } else if (state is AuthBlocLoggedIn) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text('Logged In as ${state.username}'),
//                   RaisedButton(
//                     onPressed: () {
//                       context.read<AuthBloc>().add(LogoutEvent());
//                     },
//                     child: Text('Logout'),
//                   ),
//                 ],
//               ),
//             );
//           } else if (state is AuthBlocLoggedOut) {
//             return Center(
//               child: RaisedButton(
//                 onPressed: () {
//                   context.read<AuthBloc>().add(LoginEvent('user', 'password'));
//                 },
//                 child: Text('Login'),
//               ),
//             );
//           }
//           return Container(); // 处理其他状态
//         },
//       ),
//     );
//   }
// }
