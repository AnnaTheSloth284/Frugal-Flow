import 'bloc/dashboard_menu_bloc.dart';
import 'models/dashboard_menu_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class DashboardMenuScreen extends StatelessWidget {
  const DashboardMenuScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardMenuBloc>(
        create: (context) => DashboardMenuBloc(
            DashboardMenuState(dashboardMenuModelObj: DashboardMenuModel()))
          ..add(DashboardMenuInitialEvent()),
        child: DashboardMenuScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DashboardMenuBloc, DashboardMenuState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.tealA700,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgHamburger123x22,
                            height: 23.v,
                            width: 22.h,
                            onTap: () {
                              onTapImgHamburgerone(context);
                            }),
                        SizedBox(height: 15.v),
                        Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            color: appTheme.indigo300.withOpacity(0.73),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder15),
                            child: Container(
                                height: 167.v,
                                width: 353.h,
                                decoration: AppDecoration.fillIndigo.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15),
                                child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 61.h,
                                                  vertical: 3.v),
                                              decoration:
                                                  AppDecoration.fillIndigo300,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 42.h),
                                                        child: Text(
                                                            "lbl_joined_jan_2023"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumGray400_1)),
                                                    SizedBox(height: 7.v),
                                                    Text(
                                                        "msg_aerolad007_gmail_com"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumGray400_1),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5.v,
                                                                right: 42.h,
                                                                bottom: 30.v),
                                                        child: Text(
                                                            "lbl_91_9126675431"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumGray400_1))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 28.v, right: 67.h),
                                              child: Text("lbl_robo_raman".tr,
                                                  style: CustomTextStyles
                                                      .headlineSmallBlack900))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse2,
                                          height: 148.v,
                                          width: 154.h,
                                          radius: BorderRadius.circular(77.h),
                                          alignment: Alignment.topLeft)
                                    ]))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 4.h, top: 15.v, right: 2.h),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgIconpengaturan,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, top: 3.v, bottom: 3.v),
                                  child: Text("lbl_account_profile".tr,
                                      style:
                                          CustomTextStyles.titleSmallMedium)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 4.h, top: 32.v, right: 2.h),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath:
                                      ImageConstant.imgIconpengaturanBlack900,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, top: 3.v, bottom: 3.v),
                                  child: Text("lbl_portfolio2".tr,
                                      style:
                                          CustomTextStyles.titleSmallMedium)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 4.h, top: 32.v, right: 2.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconpengaturan24x24,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, top: 4.v, bottom: 2.v),
                                  child: Text("lbl_marketplace".tr,
                                      style:
                                          CustomTextStyles.titleSmallMedium)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 4.h, top: 32.v, right: 2.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconpengaturan1,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, top: 4.v, bottom: 2.v),
                                  child: Text("lbl_settings".tr,
                                      style:
                                          CustomTextStyles.titleSmallMedium)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 4.h, top: 32.v, right: 2.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconpengaturan2,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, top: 3.v, bottom: 3.v),
                                  child: Text("lbl_dashboard".tr,
                                      style:
                                          CustomTextStyles.titleSmallMedium)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 4.h, top: 32.v, right: 2.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconpengaturan3,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, top: 3.v, bottom: 3.v),
                                  child: Text("lbl_notifications".tr,
                                      style:
                                          CustomTextStyles.titleSmallMedium)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 4.h, top: 32.v, right: 2.h),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant
                                      .imgIconpengaturanBlack90024x24,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, top: 3.v, bottom: 3.v),
                                  child: Text("lbl_faq".tr,
                                      style:
                                          CustomTextStyles.titleSmallMedium)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ])),
                        Padding(
                            padding: EdgeInsets.fromLTRB(4.h, 32.v, 2.h, 5.v),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgSearchBlack900,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, top: 4.v, bottom: 2.v),
                                  child: Text("lbl_live_support".tr,
                                      style:
                                          CustomTextStyles.titleSmallMedium)),
                              Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ]))
                      ])),
              bottomNavigationBar: Padding(
                  padding:
                      EdgeInsets.only(left: 19.h, right: 19.h, bottom: 25.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgMaximize,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 16.h, top: 4.v, bottom: 2.v),
                            child: Text("lbl_log_out".tr,
                                style: CustomTextStyles.titleSmallBlack)),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: 24.adaptSize,
                            width: 24.adaptSize)
                      ]))));
    });
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the dashboardScreen.
  onTapImgHamburgerone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }
}
