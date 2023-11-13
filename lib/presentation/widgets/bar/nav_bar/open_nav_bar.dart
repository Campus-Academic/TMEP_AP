import 'package:flutter/material.dart';
import 'package:app_template_v0/presentation/widgets/bar/nav_bar/bottom_nav_bar.dart';
import 'package:app_template_v0/presentation/widgets/bar/nav_bar/text_page_selector.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Bottom Navigation Bar', // 應用標題
      theme: ThemeData(
        primarySwatch: Colors.blue, // 主題顏色
        visualDensity: VisualDensity.adaptivePlatformDensity, // 視覺密度適應平台
      ),
      home: const MyHomePage(), // 首頁
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = -1; // 初始未選中的值

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // 更新選中的索引
    });
  }

  Widget _getCurrentPage() {
    switch (_selectedIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const AppPage();
      case 2:
        return const BusPage();
      case 3:
        return const StudyPage();
      case 4:
        return const SettingsPage();
      default:
        return const EmptyPage(); // 默認返回一個空白頁面
    }
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('My Home Page'),
    ),
    body: Stack(
      children: <Widget>[
        _getCurrentPage(), // 充滿螢幕
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomBottomNavigationBar(
            isLogged: false,
            selectedIndex: _selectedIndex,
            onItemSelected: _onItemTapped,
            userImagePath: "assets/images/cat.jpg",
          ),
        ),
      ],
    ),
  );
}
}