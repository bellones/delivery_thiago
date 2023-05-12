import 'package:delivery_thiago/config/constants.dart';
import 'package:delivery_thiago/config/enums.dart';
import 'package:delivery_thiago/pages/home/home_page.dart';
import 'package:delivery_thiago/pages/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Colors.black;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icon/home_icon.svg",
                  width: 24,
                  colorFilter: ColorFilter.mode(
                      MenuState.home == selectedMenu
                          ? kPrimaryColor
                          : inActiveIconColor,
                      BlendMode.srcIn),
                ),
                onPressed: () => Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const HomePage(),
                    transitionDuration: const Duration(seconds: 0),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.search_outlined,
                  color: MenuState.search == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const SearchPage(),
                    transitionDuration: const Duration(seconds: 0),
                  ),
                ),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icon/fire.svg",
                  width: 24,
                  colorFilter: ColorFilter.mode(
                      MenuState.category == selectedMenu
                          ? kPrimaryColor
                          : inActiveIconColor,
                      BlendMode.srcIn),
                ),
                onPressed: () => {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icon/icon_posting.svg",
                  width: 28,
                  colorFilter: ColorFilter.mode(
                      MenuState.feed == selectedMenu
                          ? kPrimaryColor
                          : inActiveIconColor,
                      BlendMode.srcIn),
                ),
                onPressed: () => {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icon/User.svg",
                  width: 24,
                  colorFilter: ColorFilter.mode(
                      MenuState.profile == selectedMenu
                          ? kPrimaryColor
                          : inActiveIconColor,
                      BlendMode.srcIn),
                ),
                onPressed: () => {},
              ),
            ],
          )),
    );
  }
}
