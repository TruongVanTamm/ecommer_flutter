import 'package:ecommer_flutter/constants/constants.dart';
import 'package:ecommer_flutter/controllers/home_controller.dart';
import 'package:ecommer_flutter/views/favorite_screen/favorite_screen.dart';
import 'package:ecommer_flutter/views/home_screen/home_screen.dart';
import 'package:ecommer_flutter/views/shop_screen/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
        icon: Image.asset(
          icHome,
          width: 24,
          color: grayColor,
        ),
        activeIcon: Image.asset(
          icHome,
          width: 24,
          color: primaryColor,
        ),
        label: home,
      ),
      BottomNavigationBarItem(
          icon: Image.asset(
            icShop,
            width: 24,
            color: grayColor,
          ),
          activeIcon: Image.asset(
            icShop,
            width: 24,
            color: primaryColor,
          ),
          label: shop),
      BottomNavigationBarItem(
          icon: Image.asset(
            icFavoriteSeller,
            width: 24,
            color: grayColor,
          ),
          activeIcon: Image.asset(
            icFavoriteSeller,
            width: 24,
            color: primaryColor,
          ),
          label: favorite),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 24,
            color: grayColor,
          ),
          activeIcon: Image.asset(
            icCart,
            width: 24,
            color: primaryColor,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 24,
            color: grayColor,
          ),
          activeIcon: Image.asset(
            icProfile,
            width: 24,
            color: primaryColor,
          ),
          label: profile),
    ];

    var navBody = [
      const HomeScreen(),
      const ShopScreen(),
      const FavoriteScreen(),
      Container(
        color: Colors.cyan,
      ),
      Container(
        color: Colors.cyan,
      )
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Obx(() => Expanded(
            child: navBody.elementAt(controller.currentNavIndex.value))),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            unselectedItemColor: grayColor,
            selectedItemColor: primaryColor,
            selectedLabelStyle: const TextStyle(fontFamily: bold, fontSize: 12),
            type: BottomNavigationBarType.fixed,
            items: navbarItem,
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          ),
        ),
      ),
    );
  }
}
