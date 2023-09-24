import '../portfolio_one_screen/widgets/chipviewsell_item_widget.dart';
import 'bloc/portfolio_one_bloc.dart';
import 'models/chipviewsell_item_model.dart';
import 'models/portfolio_one_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/presentation/marketplace_buy_page/marketplace_buy_page.dart';
import 'package:anna_s_application1/presentation/marketplace_page/marketplace_page.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:anna_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:anna_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class PortfolioOneScreen extends StatelessWidget {
  PortfolioOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PortfolioOneBloc>(
      create: (context) => PortfolioOneBloc(PortfolioOneState(
        portfolioOneModelObj: PortfolioOneModel(),
      ))
        ..add(PortfolioOneInitialEvent()),
      child: PortfolioOneScreen(),
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
          title: BlocSelector<PortfolioOneBloc, PortfolioOneState,
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
            vertical: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBackbutton1,
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                      margin: EdgeInsets.only(
                        top: 5.v,
                        bottom: 7.v,
                      ),
                    ),
                    BlocSelector<PortfolioOneBloc, PortfolioOneState,
                        PortfolioOneModel?>(
                      selector: (state) => state.portfolioOneModelObj,
                      builder: (context, portfolioOneModelObj) {
                        return Wrap(
                          runSpacing: 5.v,
                          spacing: 5.h,
                          children: List<Widget>.generate(
                            portfolioOneModelObj?.chipviewsellItemList.length ??
                                0,
                            (index) {
                              ChipviewsellItemModel model = portfolioOneModelObj
                                      ?.chipviewsellItemList[index] ??
                                  ChipviewsellItemModel();

                              return ChipviewsellItemWidget(
                                model,
                                onSelectedChipView: (value) {
                                  context.read<PortfolioOneBloc>().add(
                                      UpdateChipViewEvent(
                                          index: index, isSelected: value));
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Container(
                height: 260.v,
                width: 348.h,
                decoration: BoxDecoration(
                  color: appTheme.tealA700,
                  borderRadius: BorderRadius.circular(
                    15.h,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 9.v,
                  right: 2.h,
                ),
                decoration: AppDecoration.fillTealA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 43.v,
                      width: 70.h,
                      margin: EdgeInsets.only(
                        left: 46.h,
                        top: 9.v,
                        bottom: 18.v,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "lbl_mpmw".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "lbl_rs_130".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame92472x167,
                      height: 72.v,
                      width: 167.h,
                      radius: BorderRadius.horizontal(
                        right: Radius.circular(15.h),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 318.h,
                margin: EdgeInsets.fromLTRB(5.h, 14.v, 26.h, 5.v),
                child: Text(
                  "msg_a_gym_with_latest".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBlack900.copyWith(
                    height: 1.38,
                  ),
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
