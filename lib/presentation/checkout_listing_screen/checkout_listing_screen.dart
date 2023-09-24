import 'bloc/checkout_listing_bloc.dart';
import 'models/checkout_listing_model.dart';
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

class CheckoutListingScreen extends StatelessWidget {
  CheckoutListingScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckoutListingBloc>(
      create: (context) => CheckoutListingBloc(CheckoutListingState(
        checkoutListingModelObj: CheckoutListingModel(),
      ))
        ..add(CheckoutListingInitialEvent()),
      child: CheckoutListingScreen(),
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
          title: BlocSelector<CheckoutListingBloc, CheckoutListingState,
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
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBackbutton1,
                height: 25.adaptSize,
                width: 25.adaptSize,
                alignment: Alignment.centerLeft,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 13.v,
                  right: 2.h,
                ),
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
              Spacer(),
              Container(
                height: 48.adaptSize,
                width: 48.adaptSize,
                padding: EdgeInsets.all(12.h),
                decoration: AppDecoration.outlineTeal.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillTeal,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgCheckmark,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                "lbl_we_re_on_it".tr,
                style: CustomTextStyles.headlineSmallOnErrorContainer,
              ),
              Container(
                width: 252.h,
                margin: EdgeInsets.only(
                  left: 48.h,
                  top: 11.v,
                  right: 48.h,
                ),
                child: Text(
                  "msg_your_listing_has".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              BlocSelector<CheckoutListingBloc, CheckoutListingState, String?>(
                selector: (state) => state.radioGroup,
                builder: (context, radioGroup) {
                  return CustomRadioButton(
                    text: "lbl_go_back_home".tr,
                    value: "lbl_go_back_home".tr ?? "",
                    groupValue: radioGroup,
                    padding: EdgeInsets.fromLTRB(12.h, 13.v, 24.h, 13.v),
                    onChange: (value) {
                      context
                          .read<CheckoutListingBloc>()
                          .add(ChangeRadioButtonEvent(value: value));
                    },
                  );
                },
              ),
              SizedBox(height: 24.v),
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
