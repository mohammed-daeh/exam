import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:third_test/featuers/home/presentation/screen/appointments_screen.dart';
import 'package:third_test/featuers/home/presentation/screen/home_screen.dart';
import 'package:third_test/featuers/home/presentation/screen/main_screen.dart';
import 'package:third_test/featuers/home/presentation/screen/notifications_screen.dart';
import 'package:third_test/featuers/home/presentation/screen/profile_screen.dart';

class AppRouter {
  static const String main = '/main';
  static const String homScreen = '/home';
  static const String appointments = '/appointments';
  static const String notifications = '/notifications';
  static const String profile = '/profile';

  static List<GetPage> appPages = [
    GetPage(
      name: main,
      page: () => MainScreen(),
    ),
    GetPage(
      name: homScreen,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: appointments,
      page: () => AppointmentsScreen(),
    ),
    GetPage(
      name: notifications,
      page: () => NotificationsScreen(),
    ),
    GetPage(
      name: profile,
      page: () => ProfileScreen(),
    ),
  ];
}
