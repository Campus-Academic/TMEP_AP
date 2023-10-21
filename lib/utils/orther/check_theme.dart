bool isNightTime() {
  int currentHour = DateTime.now().hour;
  // 设置夜间模式时间范围为晚上6点到早上6点
  return currentHour >= 18 || currentHour < 6;
}

void main() {
  bool night = isNightTime();
  if (night) {
    print("It's night time.");
  } else {
    print("It's day time.");
  }
}
