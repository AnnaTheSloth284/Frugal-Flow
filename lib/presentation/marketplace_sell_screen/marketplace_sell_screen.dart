import '../marketplace_sell_screen/widgets/stockinfo_item_widget.dart';
import 'bloc/marketplace_sell_bloc.dart';
import 'models/marketplace_sell_model.dart';
import 'models/stockinfo_item_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/presentation/marketplace_buy_page/marketplace_buy_page.dart';
import 'package:anna_s_application1/presentation/marketplace_page/marketplace_page.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:anna_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:anna_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MarketplaceSellScreen extends StatelessWidget {
  MarketplaceSellScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MarketplaceSellBloc>(
        create: (context) => MarketplaceSellBloc(MarketplaceSellState(
            marketplaceSellModelObj: MarketplaceSellModel()))
          ..add(MarketplaceSellInitialEvent()),
        child: MarketplaceSellScreen());
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
                title: BlocSelector<MarketplaceSellBloc, MarketplaceSellState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview(
                          hintText: "lbl_search".tr,
                          controller: searchController);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 13.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgBackbutton1,
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            onTap: () {
                              onTapImgBackbuttonone(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text("lbl_sell".tr,
                                style: theme.textTheme.titleLarge))
                      ]),
                      SizedBox(height: 17.v),
                      Text("lbl_your_stocks".tr,
                          style: theme.textTheme.titleLarge),
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(top: 32.v, right: 1.h),
                              child: BlocSelector<
                                      MarketplaceSellBloc,
                                      MarketplaceSellState,
                                      MarketplaceSellModel?>(
                                  selector: (state) =>
                                      state.marketplaceSellModelObj,
                                  builder: (context, marketplaceSellModelObj) {
                                    return ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: 11.v);
                                        },
                                        itemCount: marketplaceSellModelObj
                                                ?.stockinfoItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          StockinfoItemModel model =
                                              marketplaceSellModelObj
                                                          ?.stockinfoItemList[
                                                      index] ??
                                                  StockinfoItemModel();
                                          return StockinfoItemWidget(model);
                                        });
                                  })))
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
