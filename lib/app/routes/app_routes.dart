part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const DASHBOARD = _Paths.DASHBOARD;
  static const CATEGORY = _Paths.CATEGORY;
  static const COMMUNITY = _Paths.COMMUNITY;
  static const PROFILE = _Paths.PROFILE;
  static const USER_PROFILE = _Paths.USER_PROFILE;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const DASHBOARD = '/dashboard';
  static const CATEGORY = '/category';
  static const COMMUNITY = '/community';
  static const PROFILE = '/profile';
  static const USER_PROFILE = '/user-profile';
}
