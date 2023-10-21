// Author: 賴泓瑋

/// Configuration for the app's routing system.
///
/// This class defines the route paths for different sections of the app.
class RouterConf {
  static const String init = '/'; // The initial route for the app.
  static final CoreRoutes core = CoreRoutes();
  static final FuncRoutes func = FuncRoutes();
  static final AuthRouters auth = AuthRouters();
}

/// Core section routes.
class CoreRoutes {
  static const String base = '/'; // The base route for the core section.
  static const String home = '$base/home'; // The home route.
  static const String classSchedule =
      '$base/classSchedule'; // The class schedule route.
  static const String schoolLink = '$base/schoolLink'; // The school link route.
}

/// Functionality section routes.
class FuncRoutes {
  static const String base =
      '/f'; // The base route for the functionality section.
  static const String campusInfo =
      '$base/campusInfo'; // Campus information route.
  static const String creditAchive =
      '$base/creditAchive'; // Credit achievements route.
  static const String grades = '$base/grades'; // Grades route.
  static const String gradesWarning =
      '$base/gradesWarning'; // Grades warning route.
  static const String shuttleBooking =
      '$base/campusInfo'; // Shuttle booking route.
  static const String suveyForm = '$base/suveyForm'; // Survey form route.
  static const String teamIntor = '$base/teamIntor'; // Team information route.
}

/// Authentication section routes.
class AuthRouters {
  static const String base =
      '/auth'; // The base route for the authentication section.
  static const String login = '$base/login'; // The login route.
  static const String logout = '$base/logout'; // The logout route.
}
