/// Course models
///
/// ＊轉json用Course.fromJson在foreach即可
class Course {
  List<Courses>? courses;
  List<TimeCodes>? timeCodes;

  Course({this.courses, this.timeCodes});

  /// The number of characters in this chunk when unsplit.
  Course.fromJson(Map<String, dynamic> json) {
    if (json['courses'] != null) {
      courses = <Courses>[];
      json['courses'].forEach((v) {
        courses!.add(Courses.fromJson(v));
      });
    }
    if (json['timeCodes'] != null) {
      timeCodes = <TimeCodes>[];
      json['timeCodes'].forEach((v) {
        timeCodes!.add(TimeCodes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (courses != null) {
      data['courses'] = courses!.map((v) => v.toJson()).toList();
    }
    if (timeCodes != null) {
      data['timeCodes'] = timeCodes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Courses {
  String? code;
  String? title;
  String? className;
  String? group;
  String? units;
  String? hours;
  String? required;
  String? at;
  List<SectionTimes>? sectionTimes;
  Location? location;
  List<String>? instructors;

  Courses(
      {this.code,
      this.title,
      this.className,
      this.group,
      this.units,
      this.hours,
      this.required,
      this.at,
      this.sectionTimes,
      this.location,
      this.instructors});

  Courses.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    title = json['title'];
    className = json['className'];
    group = json['group'];
    units = json['units'];
    hours = json['hours'];
    required = json['required'];
    at = json['at'];
    if (json['sectionTimes'] != null) {
      sectionTimes = <SectionTimes>[];
      json['sectionTimes'].forEach((v) {
        sectionTimes!.add(SectionTimes.fromJson(v));
      });
    }
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    instructors = json['instructors'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['title'] = title;
    data['className'] = className;
    data['group'] = group;
    data['units'] = units;
    data['hours'] = hours;
    data['required'] = required;
    data['at'] = at;
    if (sectionTimes != null) {
      data['sectionTimes'] = sectionTimes!.map((v) => v.toJson()).toList();
    }
    if (location != null) {
      data['location'] = location!.toJson();
    }
    data['instructors'] = instructors;
    return data;
  }
}

class SectionTimes {
  int? weekday;
  int? index;

  SectionTimes({this.weekday, this.index});

  SectionTimes.fromJson(Map<String, dynamic> json) {
    weekday = json['weekday'];
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['weekday'] = weekday;
    data['index'] = index;
    return data;
  }
}

class Location {
  String? room;
  String? building;

  Location({this.room, this.building});

  Location.fromJson(Map<String, dynamic> json) {
    room = json['room'];
    building = json['building'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['room'] = room;
    data['building'] = building;
    return data;
  }
}

class TimeCodes {
  String? title;
  String? startTime;
  String? endTime;

  TimeCodes({this.title, this.startTime, this.endTime});

  TimeCodes.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    startTime = json['startTime'];
    endTime = json['endTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    return data;
  }
}
