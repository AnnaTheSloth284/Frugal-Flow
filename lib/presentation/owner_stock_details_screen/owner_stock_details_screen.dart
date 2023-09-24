import 'bloc/owner_stock_details_bloc.dart';
import 'models/owner_stock_details_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/presentation/marketplace_buy_page/marketplace_buy_page.dart';
import 'package:anna_s_application1/presentation/marketplace_page/marketplace_page.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:anna_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:anna_s_application1/widgets/custom_bottom_bar.dart';
import 'package:anna_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OwnerStockDetailsScreen extends StatelessWidget {
  OwnerStockDetailsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerStockDetailsBloc>(
        create: (context) => OwnerStockDetailsBloc(OwnerStockDetailsState(
            ownerStockDetailsModelObj: OwnerStockDetailsModel()))
          ..add(OwnerStockDetailsInitialEvent()),
        child: OwnerStockDetailsScreen());
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
                        EdgeInsets.only(left: 20.h, top: 15.v, bottom: 16.v)),
                centerTitle: true,
                title: BlocSelector<OwnerStockDetailsBloc,
                        OwnerStockDetailsState, TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview(
                          hintText: "lbl_search".tr,
                          controller: searchController);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgBackbutton1,
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 4.h)),
                  Container(
                      margin: EdgeInsets.only(left: 8.h, top: 54.v, right: 2.h),
                      decoration: AppDecoration.fillTealA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 11.h, top: 15.v, bottom: 13.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_stock_name".tr,
                                          style: theme.textTheme.titleLarge),
                                      Text("lbl_price".tr,
                                          style: theme.textTheme.titleSmall)
                                    ])),
                            CustomImageView(
                                imagePath: ImageConstant.imgFrame924,
                                height: 72.v,
                                width: 167.h,
                                radius: BorderRadius.horizontal(
                                    right: Radius.circular(15.h)))
                          ])),
                  Container(
                      margin: EdgeInsets.only(left: 10.h, top: 22.v),
                      padding: EdgeInsets.symmetric(
                          horizontal: 131.h, vertical: 112.v),
                      decoration: AppDecoration.fillTealA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 10.v),
                            Text("lbl_graph".tr,
                                style: theme.textTheme.titleLarge)
                          ])),
                  SizedBox(height: 39.v),
                  CustomElevatedButton(
                      height: 61.v,
                      width: 170.h,
                      text: "lbl_review_stock".tr,
                      buttonTextStyle: CustomTextStyles.titleMediumBlack900,
                      onTap: () {
                        onTapReviewstock(context);
                      }),
                  SizedBox(height: 21.v),
                  CustomElevatedButton(
                      height: 58.v,
                      width: 170.h,
                      text: "lbl_sell_stock".tr,
                      buttonTextStyle: CustomTextStyles.titleMediumBlack900,
                      onTap: () {
                        onTapSellstock(context);
                      }),
                  SizedBox(height: 5.v)
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

  /// Navigates to the marketplaceSellScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the marketplaceSellScreen.
  onTapReviewstock(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.marketplaceSellScreen,
    );
  }

  /// Navigates to the marketplaceSellScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the marketplaceSellScreen.
  onTapSellstock(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.marketplaceSellScreen,
    );
  }
}
