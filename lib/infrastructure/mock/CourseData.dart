class CourseData {
  late List<Course> courses;
  late List<TimeCode> timeCodes;

  CourseData({required this.courses, required this.timeCodes});

  factory CourseData.fromJson(Map<String, dynamic> json) {
    final List<dynamic> courseData = json['courses'] ?? [];
    final List<Course> courses =
        courseData.map((courseJson) => Course.fromJson(courseJson)).toList();

    final List<dynamic> timeCodeData = json['timeCodes'] ?? [];
    final List<TimeCode> timeCodes = timeCodeData
        .map((timeCodeJson) => TimeCode.fromJson(timeCodeJson))
        .toList();

    return CourseData(courses: courses, timeCodes: timeCodes);
  }
}

class Course {
  late String code;
  late String title;
  late String className;
  late String group;
  late String units;
  late String hours;
  late String required;
  late List<SectionTime> sectionTimes;
  late Location location;
  late List<String> instructors;

  Course({
    required this.code,
    required this.title,
    required this.className,
    required this.group,
    required this.units,
    required this.hours,
    required this.required,
    required this.sectionTimes,
    required this.location,
    required this.instructors,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    final List<dynamic> sectionTimeData = json['sectionTimes'] ?? [];
    final List<SectionTime> sectionTimes = sectionTimeData
        .map((timeJson) => SectionTime.fromJson(timeJson))
        .toList();

    final locationJson = json['location'] ?? {};
    final Location location = Location.fromJson(locationJson);

    return Course(
      code: json['code'],
      title: json['title'],
      className: json['className'],
      group: json['group'],
      units: json['units'],
      hours: json['hours'],
      required: json['required'],
      sectionTimes: sectionTimes,
      location: location,
      instructors: List<String>.from(json['instructors']),
    );
  }
}

class SectionTime {
  late int weekday;
  late int index;

  SectionTime({
    required this.weekday,
    required this.index,
  });

  factory SectionTime.fromJson(Map<String, dynamic> json) {
    return SectionTime(
      weekday: json['weekday'],
      index: json['index'],
    );
  }
}

class Location {
  late String room;
  late String building;

  Location({
    this.room = "",
    this.building = "",
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      room: json['room'] ?? "",
      building: json['building'] ?? "",
    );
  }
}

class TimeCode {
  late String title;
  late String startTime;
  late String endTime;

  TimeCode({
    required this.title,
    required this.startTime,
    required this.endTime,
  });

  factory TimeCode.fromJson(Map<String, dynamic> json) {
    return TimeCode(
      title: json['title'],
      startTime: json['startTime'],
      endTime: json['endTime'],
    );
  }
}
