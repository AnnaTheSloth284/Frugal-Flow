import '../dashboard_screen/widgets/chipviewbuy2_item_widget.dart';
import 'bloc/dashboard_bloc.dart';
import 'models/chipviewbuy2_item_model.dart';
import 'models/dashboard_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/presentation/marketplace_buy_page/marketplace_buy_page.dart';
import 'package:anna_s_application1/presentation/marketplace_page/marketplace_page.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:anna_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:anna_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) =>
            DashboardBloc(DashboardState(dashboardModelObj: DashboardModel()))
              ..add(DashboardInitialEvent()),
        child: DashboardScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 45.h,
                leading: AppbarImage(
                    imagePath: ImageConstant.imgHamburger1,
                    margin:
                        EdgeInsets.only(left: 20.h, top: 15.v, bottom: 16.v),
                    onTap: () {
                      onTapHamburgerone(context);
                    }),
                centerTitle: true,
                title: BlocSelector<DashboardBloc, DashboardState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview(
                          hintText: "lbl_search".tr,
                          controller: searchController);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 2.v),
                child: Column(children: [
                  SizedBox(height: 8.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 352.h,
                                        margin: EdgeInsets.only(left: 2.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 22.h, vertical: 14.v),
                                        decoration: AppDecoration.fillTealA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_hey_robo".tr,
                                                  style: theme
                                                      .textTheme.titleLarge),
                                              SizedBox(height: 3.v),
                                              Text("msg_here_s_how_your".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumBlack900),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 53.v,
                                                          right: 93.h,
                                                          bottom: 55.v),
                                                      child: Text(
                                                          "lbl_user_profile".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumBlack900)))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 3.h, top: 12.v),
                                        child: Row(children: [
                                          Text("msg_go_to_the_marketplace".tr,
                                              style:
                                                  theme.textTheme.titleLarge),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgBackbutton3,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 6.h, bottom: 4.v))
                                        ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 6.h, top: 9.v),
                                        child: BlocSelector<
                                                DashboardBloc,
                                                DashboardState,
                                                DashboardModel?>(
                                            selector: (state) =>
                                                state.dashboardModelObj,
                                            builder:
                                                (context, dashboardModelObj) {
                                              return Wrap(
                                                  runSpacing: 5.v,
                                                  spacing: 5.h,
                                                  children: List<
                                                          Widget>.generate(
                                                      dashboardModelObj
                                                              ?.chipviewbuy2ItemList
                                                              .length ??
                                                          0, (index) {
                                                    Chipviewbuy2ItemModel
                                                        model =
                                                        dashboardModelObj
                                                                    ?.chipviewbuy2ItemList[
                                                                index] ??
                                                            Chipviewbuy2ItemModel();
                                                    return Chipviewbuy2ItemWidget(
                                                        model,
                                                        onSelectedChipView:
                                                            (value) {
                                                      context
                                                          .read<DashboardBloc>()
                                                          .add(
                                                              UpdateChipViewEvent(
                                                                  index: index,
                                                                  isSelected:
                                                                      value));
                                                    });
                                                  }));
                                            })),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 3.h, top: 14.v),
                                        child: Row(children: [
                                          Text("lbl_my_stocks".tr,
                                              style:
                                                  theme.textTheme.titleLarge),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgBackbutton3,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 7.h, bottom: 4.v))
                                        ])),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 7.v, right: 3.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 138.h, vertical: 141.v),
                                        decoration: AppDecoration.fillTealA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15),
                                        child: Text("lbl_portfolio".tr,
                                            style: CustomTextStyles
                                                .bodyMediumBlack900))
                                  ]))))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Star:
        return "/";
      case BottomBarEnum.Icpiechart:
        return AppRoutes.marketplaceBuyPage;
      case BottomBarEnum.Menuonsecondarycontainer:
        return "/";
      case BottomBarEnum.Menuonsecondarycontainer28x28:
        return AppRoutes.marketplacePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.marketplaceBuyPage:
        return MarketplaceBuyPage.builder(context);
      case AppRoutes.marketplacePage:
        return MarketplacePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the dashboardMenuScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the dashboardMenuScreen.
  onTapHamburgerone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardMenuScreen,
    );
  }
}
