import 'bloc/checkout_buy_bloc.dart';
import 'models/checkout_buy_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/presentation/marketplace_buy_page/marketplace_buy_page.dart';
import 'package:anna_s_application1/presentation/marketplace_page/marketplace_page.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:anna_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:anna_s_application1/widgets/custom_bottom_bar.dart';
import 'package:anna_s_application1/widgets/custom_icon_button.dart';
import 'package:anna_s_application1/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class CheckoutBuyScreen extends StatelessWidget {
  CheckoutBuyScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckoutBuyBloc>(
      create: (context) => CheckoutBuyBloc(CheckoutBuyState(
        checkoutBuyModelObj: CheckoutBuyModel(),
      ))
        ..add(CheckoutBuyInitialEvent()),
      child: CheckoutBuyScreen(),
    );
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
            margin: EdgeInsets.only(
              left: 20.h,
              top: 15.v,
              bottom: 16.v,
            ),
          ),
          centerTitle: true,
          title: BlocSelector<CheckoutBuyBloc, CheckoutBuyState,
              TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return AppbarSearchview(
                hintText: "lbl_search".tr,
                controller: searchController,
              );
            },
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 13.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBackbutton1,
                height: 25.adaptSize,
                width: 25.adaptSize,
              ),
              SizedBox(height: 13.v),
              Container(
                decoration: AppDecoration.fillTealA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 15.v,
                        bottom: 13.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_stock_name".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                          Text(
                            "lbl_price".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame924,
                      height: 72.v,
                      width: 167.h,
                      radius: BorderRadius.horizontal(
                        right: Radius.circular(15.h),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.v),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "lbl_buy_order_lot".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Spacer(),
                  CustomIconButton(
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFrame,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 32.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "lbl_8".tr,
                      style: CustomTextStyles.titleSmall14_1,
                    ),
                  ),
                  CustomIconButton(
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    margin: EdgeInsets.only(left: 32.h),
                    padding: EdgeInsets.all(5.h),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFrameBlack900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.v),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.v),
                    child: Text(
                      "lbl_price2".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Spacer(),
                  CustomIconButton(
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFrame,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "lbl_570".tr,
                      style: CustomTextStyles.titleSmall14_1,
                    ),
                  ),
                  CustomIconButton(
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    margin: EdgeInsets.only(left: 23.h),
                    padding: EdgeInsets.all(5.h),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFrameBlack900,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 6.h,
                  top: 46.v,
                ),
                child: Text(
                  "msg_please_confirm".tr,
                  style: CustomTextStyles.titleMediumOnErrorContainer18,
                ),
              ),
              Container(
                width: 241.h,
                margin: EdgeInsets.only(
                  left: 6.h,
                  top: 9.v,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_by_clicking_submit2".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: "lbl_terms_of_use".tr,
                        style: theme.textTheme.labelLarge!.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: "lbl_and".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: "lbl_privacy_policy".tr,
                        style: theme.textTheme.labelLarge!.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: "lbl".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 6.h,
                  top: 22.v,
                  right: 19.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 21.v,
                ),
                decoration: AppDecoration.outlineIndigo.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 7.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_payment".tr,
                            style: CustomTextStyles.titleMediumOnErrorContainer,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 3.v),
                            child: Text(
                              "lbl_edit".tr,
                              style: CustomTextStyles.titleSmallLightblue500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlocSelector<CheckoutBuyBloc, CheckoutBuyState,
                            String?>(
                          selector: (state) => state.radioGroup,
                          builder: (context, radioGroup) {
                            return CustomRadioButton(
                              text: "lbl_6714".tr,
                              value: "lbl_6714".tr ?? "",
                              groupValue: radioGroup,
                              textStyle:
                                  CustomTextStyles.titleSmallOnErrorContainer,
                              onChange: (value) {
                                context
                                    .read<CheckoutBuyBloc>()
                                    .add(ChangeRadioButtonEvent(value: value));
                              },
                            );
                          },
                        ),
                        Text(
                          "lbl_01_24".tr,
                          style: CustomTextStyles.titleSmallPrimaryContainer,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(6.h, 13.v, 21.h, 5.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 20.v,
                ),
                decoration: AppDecoration.outlineIndigo.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "msg_shipping_address".tr,
                          style: CustomTextStyles.titleMediumOnErrorContainer,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.v),
                          child: Text(
                            "lbl_edit".tr,
                            style: CustomTextStyles.titleSmallLightblue500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 21.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_name".tr,
                          style: CustomTextStyles.titleSmallBluegray300,
                        ),
                        Text(
                          "lbl_elbo_d2i".tr,
                          style: CustomTextStyles.titleSmallOnPrimary,
                        ),
                      ],
                    ),
                    SizedBox(height: 18.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "lbl_street".tr,
                            style: CustomTextStyles.titleSmallBluegray300,
                          ),
                        ),
                        Text(
                          "msg_345_556_near_xyz".tr,
                          style: CustomTextStyles.titleSmallOnPrimary,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
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
}
