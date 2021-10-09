import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moki/config/moki_icons.dart';
import 'package:moki/config/pallete.dart';
import 'package:moki/features/home/home_screen.dart';
import 'package:moki/features/list/list_screen.dart';
import 'package:moki/features/profile/profile_screen.dart';
import 'package:moki/features/root/root_controller.dart';
import 'package:moki/features/search/search_screen.dart';

class RootScreen extends StatelessWidget{

  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RootController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                HomeScreen(),
                ListScreen(),
                SearchScreen(),
                ProfileScreen(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: mGreyDarkColor,
            selectedItemColor: Colors.white,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: mPrimaryColor,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: const Icon(Moki.ri_home_2_fill),
                  label: ''
              ),
              _bottomNavigationBarItem(
                icon:  const Icon(Moki.ri_play_circle_line),
                  label: ''
              ),
              _bottomNavigationBarItem(
                icon: const Icon(Moki.ri_search_line),
                  label: ''
              ),
              _bottomNavigationBarItem(
                icon: const Icon(Moki.ri_account_circle_line),
                label: ''
              ),
            ],
          ),
        );
      },
    );

  }

  _bottomNavigationBarItem({required Icon icon, required String label}) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label
    );
  }

}
  
