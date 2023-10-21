bool isNightTime() {
  int currentHour = DateTime.now().hour;
  // 你可以根据自己的需求定义白天和夜间的时间范围
  int nightStartHour = 18; // 夜间开始时间，这里设置为18点

  return currentHour >= nightStartHour;
}

void main() {
  bool night = isNightTime();
  if (night) {
    print("It's night time.");
  } else {
    print("It's day time.");
  }
}
