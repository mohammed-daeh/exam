import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:third_test/featuers/home/presentation/controllers/bottom_bar_controller.dart';
import 'package:third_test/featuers/home/presentation/screen/appointments_screen.dart';
import 'package:third_test/featuers/home/presentation/screen/home_screen.dart';
import 'package:third_test/featuers/home/presentation/screen/notifications_screen.dart';
import 'package:third_test/featuers/home/presentation/screen/profile_screen.dart';

class MainScreen extends StatelessWidget {
  final BottomNavController navController = Get.put(BottomNavController());

  final List<Widget> pages = [
    HomeScreen(),
    AppointmentsScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[navController.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: navController.selectedIndex.value,
          onTap: navController.changePage,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.home,
                ),
                label: "الرئيسة"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "المواعيد"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "الاشعارات"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "حسابي"),
          ],
        ),
      ),
    );
  }
}
