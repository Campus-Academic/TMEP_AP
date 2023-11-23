import 'package:flutter/material.dart';

/// 單個導航項目小部件
class NavBarItem extends StatelessWidget {
  // 選項圖標，可空
  final IconData? icon;
  // 選項圖片路徑，可空
  final String? imagePath;
  // 標籤文字
  final String label;
  // 索引
  final int index;
  // 是否選中狀態
  final bool isSelected;
  // 是否登入狀態
  final bool isLogged;
  // 點擊事件回調函數
  final VoidCallback onTap;

  // 構造函式
  const NavBarItem({
    Key? key,
    this.icon,
    this.imagePath,
    required this.label,
    required this.index,
    required this.isSelected,
    required this.isLogged,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 根據是否選中調整圖標大小
    double iconSize = isSelected ? 25.0 : 22.0;
    // 選中時上移偏差值
    double yOffset = isSelected ? -(((iconSize * 0.5) - (22 * 0.5)) + 2) : 0.0;

    Widget iconDisplay;
    // 根據不同狀態顯示對應圖標或圖片
    if (isSelected && isLogged && imagePath != null) {
      iconDisplay = Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          // 選中且登入時，顯示帶邊框的圓形圖片
          border: Border.all(color: const Color(0xFF456FE8), width: 1),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(imagePath!),
            fit: BoxFit.cover,
          ),
        ),
      );
    } else if (isSelected) {
      // 選中時顯示白色圖標
      iconDisplay = Icon(
        icon,
        size: iconSize,
        color: Colors.white,
      );
    } else if (!isSelected && isLogged && imagePath != null) {
      // 未選中但登入且有圖片路徑時顯示圖片
      iconDisplay = CircleAvatar(
        backgroundImage: AssetImage(imagePath!),
        backgroundColor: Colors.transparent,
        radius: iconSize / 2,
      );
    } else {
      // 其他情況顯示灰色圖標
      iconDisplay = Icon(
        icon,
        size: iconSize,
        color: const Color(0xFF989898),
      );
    }

    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 65,
          child: Stack(
            clipBehavior: Clip.none, // 允許子元素超出父容器範圍。
            alignment: Alignment.center,
            children: <Widget>[
              // 使用Positioned和Transform.translate實現圖標的垂直偏移
              Positioned(
                top: yOffset,
                child: Transform.translate(
                  offset: Offset(0, yOffset),
                  child: Container(
                    width: 50,
                    height: 50,
                    // 選中時，顯示一個有色的圓形背景。
                    decoration: isSelected
                        ? BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(25),
                          )
                        : null,
                    child: Center(
                      child: iconDisplay,
                    ),
                  ),
                ),
              ),
              // 為未選中的項目提供文字標籤
              if (!isSelected)
                Positioned(
                  bottom: 8,
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF989898),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
