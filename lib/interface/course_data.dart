abstract class CourseData {
  late List<Course> courses;
  late List<TimeCode> timeCodes;

  bool hasHoliday();
}

abstract class Course {
  late String code;
  late String title;
  late String className;
  late String group;
  late String units;
  late String hours;
  late String required;
  late List<SectionTime> times;
  late Location location;
  late String instructors;
}

abstract class Location {
  late String room;
  late String building;
}

abstract class SectionTime {
  late int weekday;
  late int index;
}

abstract class TimeCode {
  late String title;
  late String startTime;
  late String endTime;
}
