class Nontification {
  List<Notification>? notification;

  Nontification({this.notification});

  Nontification.fromJson(Map<String, dynamic> json) {
    if (json['notification'] != null) {
      notification = <Notification>[];
      json['notification'].forEach((v) {
        notification!.add(Notification.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (notification != null) {
      data['notification'] = notification!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Notification {
  String? id;
  String? posterLink;
  String? photoLink;
  String? videoLink;
  String? igLink;
  String? fbLink;
  String? communityName;
  List<Tags>? tags;
  String? title;
  String? department;
  String? date;
  String? content;

  Notification(
      {this.id,
      this.posterLink,
      this.photoLink,
      this.videoLink,
      this.igLink,
      this.fbLink,
      this.communityName,
      this.tags,
      this.title,
      this.department,
      this.date,
      this.content});

  Notification.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    posterLink = json['posterLink'];
    photoLink = json['photoLink'];
    videoLink = json['videoLink'];
    igLink = json['igLink'];
    fbLink = json['fbLink'];
    communityName = json['communityName'];
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(Tags.fromJson(v));
      });
    }
    title = json['title'];
    department = json['department'];
    date = json['date'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['posterLink'] = posterLink;
    data['photoLink'] = photoLink;
    data['videoLink'] = videoLink;
    data['igLink'] = igLink;
    data['fbLink'] = fbLink;
    data['communityName'] = communityName;
    if (tags != null) {
      data['tags'] = tags!.map((v) => v.toJson()).toList();
    }
    data['title'] = title;
    data['department'] = department;
    data['date'] = date;
    data['content'] = content;
    return data;
  }
}

class Tags {
  String? tag;

  Tags({this.tag});

  Tags.fromJson(Map<String, dynamic> json) {
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tag'] = tag;
    return data;
  }
}
