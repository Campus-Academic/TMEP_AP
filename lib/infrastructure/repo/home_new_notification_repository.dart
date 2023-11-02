typedef OnButtonPressed = void Function(bool isClicked);

class HomeNewNotificationRepository {
  OnButtonPressed? onButtonPressedCallback;

  // 这里可以使用 onButtonPressedCallback 来触发回调
  void someFunction() {
    // 做一些操作
    // 触发回调
    onButtonPressedCallback?.call(true);
  }
}
