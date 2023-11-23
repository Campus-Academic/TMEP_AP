import 'package:flutter/material.dart';
import 'package:app_template_v0/presentation/widgets/bar/nav_bar/nav_icons.dart';
import 'package:app_template_v0/presentation/widgets/bar/nav_bar/nav_bar_item.dart';

/// 主導航欄小部件
/// 這是一個無狀態小部件（StatelessWidget），用於創建應用的底部導航條。
class CustomBottomNavigationBar extends StatelessWidget {
  // 是否登錄的標誌
  final bool isLogged;
  // 當前選中項目的索引
  final int selectedIndex;
  // 項目選中時的回調函式
  final Function(int) onItemSelected;
  // 用戶圖像路徑，可空
  final String? userImagePath;

  // 構造函式
  const CustomBottomNavigationBar({
    required this.isLogged,
    required this.selectedIndex,
    required this.onItemSelected,
    this.userImagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 根據螢幕寬度動態計算導航欄的寬度
    double navBarWidth = MediaQuery.of(context).size.width * (17 / 390);
    return SafeArea(
      child: Container(
        color: Colors.transparent,
        child: Padding(
          // 周圍填充，根據計算得到的導航欄寬度來定
          padding: EdgeInsets.only(bottom: 13, left: navBarWidth, right: navBarWidth),
          child: Container(
            decoration: BoxDecoration(
              // 圓角
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              // 背景顏色
              color: Colors.white,
              // 陰影效果
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25), // 陰影顏色
                  spreadRadius: 0, // 陰影擴散程度
                  blurRadius: 4, // 陰影模糊程度
                  offset: const Offset(0, 4), // X方向和Y方向的偏移
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // 導航項目：首頁
                NavBarItem(
                  icon: MyIcons.home,
                  label: '首頁',
                  index: 0,
                  isSelected: selectedIndex == 0,
                  isLogged: isLogged,
                  onTap: () => onItemSelected(0),
                ),
                // 導航項目：App
                NavBarItem(
                  icon: MyIcons.apps,
                  label: 'App',
                  index: 1,
                  isSelected: selectedIndex == 1,
                  isLogged: isLogged,
                  onTap: () => onItemSelected(1),
                ),
                // 導航項目：校車
                NavBarItem(
                  icon: MyIcons.directionsBus,
                  label: '校車',
                  index: 2,
                  isSelected: selectedIndex == 2,
                  isLogged: isLogged,
                  onTap: () => onItemSelected(2),
                ),
                // 導航項目：學習
                NavBarItem(
                  icon: MyIcons.otherAdmission,
                  label: '學習',
                  index: 3,
                  isSelected: selectedIndex == 3,
                  isLogged: isLogged,
                  imagePath: null,
                  onTap: () => onItemSelected(3),
                ),
                // 導航項目：設定
                NavBarItem(
                  icon: MyIcons.setting,
                  label: '設定',
                  index: 4,
                  isSelected: selectedIndex == 4,
                  isLogged: isLogged,
                  imagePath: userImagePath,
                  onTap: () => onItemSelected(4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
