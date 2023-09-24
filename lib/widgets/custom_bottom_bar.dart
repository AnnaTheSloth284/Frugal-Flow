import 'package:anna_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgStar,
      activeIcon: ImageConstant.imgStar,
      type: BottomBarEnum.Star,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIcpiechart,
      activeIcon: ImageConstant.imgIcpiechart,
      type: BottomBarEnum.Icpiechart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMenuOnsecondarycontainer,
      activeIcon: ImageConstant.imgMenuOnsecondarycontainer,
      type: BottomBarEnum.Menuonsecondarycontainer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMenuOnsecondarycontainer28x28,
      activeIcon: ImageConstant.imgMenuOnsecondarycontainer28x28,
      type: BottomBarEnum.Menuonsecondarycontainer28x28,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -10,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: 28.adaptSize,
              width: 28.adaptSize,
              color: theme.colorScheme.onSecondaryContainer,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
            activeIcon: Container(
              padding: EdgeInsets.all(6.h),
              decoration: AppDecoration.fillOnSecondaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: CustomImageView(
                svgPath: bottomMenuList[index].activeIcon,
                height: 16.adaptSize,
                width: 16.adaptSize,
                color: appTheme.limeA200,
                margin: EdgeInsets.symmetric(vertical: 6.v),
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Star,
  Icpiechart,
  Menuonsecondarycontainer,
  Menuonsecondarycontainer28x28,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
