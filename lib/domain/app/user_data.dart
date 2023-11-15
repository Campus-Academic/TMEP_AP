/// 用户数据模型，用于表示用户的帐号、密码、校区和学年度信息。
class UserData {
  final String account; // 用户帐号
  final String password; // 用户密码
  final String campus; // 用户所在校区
  final String schoolYear; // 用户学年度

  /// 创建一个新的 UserData 对象。
  ///
  /// [account] 表示用户的帐号。
  /// [password] 表示用户的密码。
  /// [campus] 表示用户所在的校区。
  /// [schoolYear] 表示用户的学年度。
  UserData({
    required this.account,
    required this.password,
    required this.campus,
    required this.schoolYear,
  });

  /// 从 JSON 数据创建 UserData 对象。
  ///
  /// [json] 包含用户数据的 JSON 数据。
  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      account: json['account'] as String,
      password: json['password'] as String,
      campus: json['campus'] as String,
      schoolYear: json['schoolYear'] as String,
    );
  }

  /// 将 UserData 对象转换为 JSON 格式。
  Map<String, dynamic> toJson() {
    return {
      'account': account,
      'password': password,
      'campus': campus,
      'schoolYear': schoolYear,
    };
  }

  /// 创建一个空的 UserData 对象。
  static UserData empty() {
    return UserData(
      account: '',
      password: '',
      campus: '',
      schoolYear: '',
    );
  }

  UserData updateAttribute(
      {String? account, String? password, String? campus, String? schoolYear}) {
    return UserData(
      account: account ?? this.account,
      password: password ?? this.password,
      campus: campus ?? this.campus,
      schoolYear: schoolYear ?? this.schoolYear,
    );
  }
}
