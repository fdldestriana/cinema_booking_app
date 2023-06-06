import 'package:flutter/material.dart';
import 'package:cinema_booking_app/core.dart';

class RootView extends StatefulWidget {
  const RootView({Key? key}) : super(key: key);

  Widget build(context, RootController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: controller.pages[controller.currentIndex],
      bottomNavigationBar: Container(
        height: Get.height * 0.10,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF161621), Color(0x00161621)],
          ),
        ),
        child:
            // Material(
            //   color: Colors.transparent,
            //   child: TabBar(
            //     indicatorColor: const Color(0xFFF74346),
            //     controller: controller.tabController,
            //     tabs: [
            //       Column(
            //         children: [
            //           IconButton(
            //             onPressed: () {},
            //             icon: Image.asset("assets/images/billboard_active.png"),
            //           ),
            //           const Text("Billboard")
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           IconButton(
            //             onPressed: () {},
            //             icon: Image.asset("assets/images/coming_soon.png"),
            //           ),
            //           const Expanded(child: Text("Coming Soon"))
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           IconButton(
            //             onPressed: () {},
            //             icon: Image.asset("assets/images/food.png"),
            //           ),
            //           const Text("Food")
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           IconButton(
            //             onPressed: () {},
            //             icon: Image.asset("assets/images/profile.png"),
            //           ),
            //           const Text("Profile")
            //         ],
            //       ),
            //     ],
            //   ),
            // )
            BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: const Color(0xFFF74346),
          unselectedItemColor: const Color(0xFF4A4B56),
          currentIndex: controller.currentIndex,
          onTap: (value) {
            controller.setCurrentIndex(value);
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/billboard.png'),
                label: 'Billboard'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/coming_soon_active.png'),
                label: 'Coming Soon'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/food.png'), label: 'Food'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/profile.png'),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }

  @override
  State<RootView> createState() => RootController();
}
