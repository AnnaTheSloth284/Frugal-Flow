import '../marketplace_list_screen/widgets/myshop_item_widget.dart';
import 'bloc/marketplace_list_bloc.dart';
import 'models/marketplace_list_model.dart';
import 'models/myshop_item_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/presentation/marketplace_buy_page/marketplace_buy_page.dart';
import 'package:anna_s_application1/presentation/marketplace_page/marketplace_page.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:anna_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:anna_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MarketplaceListScreen extends StatelessWidget {
  MarketplaceListScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MarketplaceListBloc>(
        create: (context) => MarketplaceListBloc(MarketplaceListState(
            marketplaceListModelObj: MarketplaceListModel()))
          ..add(MarketplaceListInitialEvent()),
        child: MarketplaceListScreen());
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
                title: BlocSelector<MarketplaceListBloc, MarketplaceListState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview(
                          hintText: "lbl_search".tr,
                          controller: searchController);
                    })),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
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
                            child: Text("lbl_list".tr,
                                style: theme.textTheme.titleLarge))
                      ]),
                      SizedBox(height: 103.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("msg_what_do_you_want".tr,
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 13.v),
                      Expanded(
                          child: BlocSelector<MarketplaceListBloc,
                                  MarketplaceListState, MarketplaceListModel?>(
                              selector: (state) =>
                                  state.marketplaceListModelObj,
                              builder: (context, marketplaceListModelObj) {
                                return ListView.separated(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: 19.v);
                                    },
                                    itemCount: marketplaceListModelObj
                                            ?.myshopItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      MyshopItemModel model =
                                          marketplaceListModelObj
                                                  ?.myshopItemList[index] ??
                                              MyshopItemModel();
                                      return MyshopItemWidget(model);
                                    });
                              }))
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
