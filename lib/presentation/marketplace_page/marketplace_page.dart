import '../marketplace_page/widgets/chipviewbuy_item_widget.dart';
import 'bloc/marketplace_bloc.dart';
import 'models/chipviewbuy_item_model.dart';
import 'models/marketplace_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:anna_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MarketplacePage extends StatelessWidget {
  const MarketplacePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MarketplaceBloc>(
        create: (context) => MarketplaceBloc(
            MarketplaceState(marketplaceModelObj: MarketplaceModel()))
          ..add(MarketplaceInitialEvent()),
        child: MarketplacePage());
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
                title: BlocSelector<MarketplaceBloc, MarketplaceState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview(
                          hintText: "lbl_search".tr,
                          controller: searchController);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 9.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("msg_welcome_to_the_market".tr,
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h, top: 5.v),
                          child: Text("msg_what_would_you_like".tr,
                              style: CustomTextStyles.bodyLargeBlack900)),
                      SizedBox(height: 8.v),
                      Align(
                          alignment: Alignment.center,
                          child: BlocSelector<MarketplaceBloc, MarketplaceState,
                                  MarketplaceModel?>(
                              selector: (state) => state.marketplaceModelObj,
                              builder: (context, marketplaceModelObj) {
                                return Wrap(
                                    runSpacing: 5.v,
                                    spacing: 5.h,
                                    children: List<Widget>.generate(
                                        marketplaceModelObj
                                                ?.chipviewbuyItemList.length ??
                                            0, (index) {
                                      ChipviewbuyItemModel model =
                                          marketplaceModelObj
                                                      ?.chipviewbuyItemList[
                                                  index] ??
                                              ChipviewbuyItemModel();
                                      return ChipviewbuyItemWidget(model,
                                          onSelectedChipView: (value) {
                                        context.read<MarketplaceBloc>().add(
                                            UpdateChipViewEvent(
                                                index: index,
                                                isSelected: value));
                                      });
                                    }));
                              })),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 17.h, top: 20.v, right: 43.h),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text("msg_what_s_happening".tr,
                                    style: CustomTextStyles.titleSmall14)),
                            CustomImageView(
                                imagePath: ImageConstant.imgBackbutton3,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(left: 7.h))
                          ])),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 129.v,
                              width: 348.h,
                              decoration: BoxDecoration(
                                  color: appTheme.tealA700,
                                  borderRadius: BorderRadius.circular(15.h)))),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h, top: 17.v),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text("msg_latest_updates_in".tr,
                                    style: CustomTextStyles.titleSmall14)),
                            CustomImageView(
                                imagePath: ImageConstant.imgBackbutton3,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(left: 7.h))
                          ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgFrame930,
                          height: 97.v,
                          width: 373.h,
                          margin: EdgeInsets.only(left: 17.h, top: 13.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h, top: 34.v),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                child: Text("lbl_debutant_stocks".tr,
                                    style: CustomTextStyles.titleSmall14)),
                            CustomImageView(
                                imagePath: ImageConstant.imgBackbutton3,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(left: 6.h))
                          ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgFrame931,
                          height: 94.v,
                          width: 373.h,
                          margin: EdgeInsets.only(
                              left: 17.h, top: 16.v, bottom: 5.v))
                    ]))));
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
