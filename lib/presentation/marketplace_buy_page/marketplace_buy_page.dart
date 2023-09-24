import '../marketplace_buy_page/widgets/sectionlisttren_item_widget.dart';
import 'bloc/marketplace_buy_bloc.dart';
import 'models/marketplace_buy_model.dart';
import 'models/sectionlisttren_item_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:anna_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class MarketplaceBuyPage extends StatelessWidget {
  const MarketplaceBuyPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MarketplaceBuyBloc>(
        create: (context) => MarketplaceBuyBloc(
            MarketplaceBuyState(marketplaceBuyModelObj: MarketplaceBuyModel()))
          ..add(MarketplaceBuyInitialEvent()),
        child: MarketplaceBuyPage());
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
                title: BlocSelector<MarketplaceBuyBloc, MarketplaceBuyState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview(
                          hintText: "lbl_search".tr,
                          controller: searchController);
                    })),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 13.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 18.h, right: 22.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgBackbutton1,
                                    height: 25.adaptSize,
                                    width: 25.adaptSize,
                                    margin: EdgeInsets.only(bottom: 2.v),
                                    onTap: () {
                                      onTapImgBackbuttonone(context);
                                    }),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 9.h, top: 2.v),
                                    child: Text("lbl_buy".tr,
                                        style: theme.textTheme.titleLarge))
                              ]),
                              SizedBox(height: 10.v),
                              BlocSelector<
                                      MarketplaceBuyBloc,
                                      MarketplaceBuyState,
                                      MarketplaceBuyModel?>(
                                  selector: (state) =>
                                      state.marketplaceBuyModelObj,
                                  builder: (context, marketplaceBuyModelObj) {
                                    return GroupedListView<
                                            SectionlisttrenItemModel, String>(
                                        shrinkWrap: true,
                                        stickyHeaderBackgroundColor:
                                            Colors.transparent,
                                        elements: marketplaceBuyModelObj
                                                ?.sectionlisttrenItemList ??
                                            [],
                                        groupBy: (element) => element.groupBy!,
                                        sort: false,
                                        groupSeparatorBuilder: (String value) {
                                          return Padding(
                                              padding: EdgeInsets.only(
                                                  top: 20.v, bottom: 12.v),
                                              child: Text(value,
                                                  style: theme
                                                      .textTheme.titleLarge!
                                                      .copyWith(
                                                          color: appTheme
                                                              .black900)));
                                        },
                                        itemBuilder: (context, model) {
                                          return SectionlisttrenItemWidget(
                                              model);
                                        },
                                        separator: SizedBox(height: 11.v));
                                  }),
                              Container(
                                  decoration: AppDecoration.fillTealA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFrame924,
                                            height: 84.v,
                                            width: 167.h,
                                            radius: BorderRadius.horizontal(
                                                right: Radius.circular(15.h)))
                                      ])),
                              SizedBox(height: 11.v),
                              Container(
                                  decoration: AppDecoration.fillTealA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 11.h,
                                                top: 18.v,
                                                bottom: 14.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_stock_name".tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: theme.textTheme
                                                          .titleLarge),
                                                  SizedBox(height: 5.v),
                                                  Text("lbl_price".tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: theme
                                                          .textTheme.titleSmall)
                                                ])),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFrame924,
                                            height: 82.v,
                                            width: 167.h,
                                            radius: BorderRadius.horizontal(
                                                right: Radius.circular(15.h)))
                                      ]))
                            ]))))));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the dashboardScreen.
  onTapImgBackbuttonone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }
}
