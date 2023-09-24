import 'bloc/marketplace_buy_container_bloc.dart';
import 'models/marketplace_buy_container_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/presentation/marketplace_buy_page/marketplace_buy_page.dart';
import 'package:anna_s_application1/presentation/marketplace_page/marketplace_page.dart';
import 'package:anna_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MarketplaceBuyContainerScreen extends StatelessWidget {
  MarketplaceBuyContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MarketplaceBuyContainerBloc>(
        create: (context) => MarketplaceBuyContainerBloc(
            MarketplaceBuyContainerState(
                marketplaceBuyContainerModelObj:
                    MarketplaceBuyContainerModel()))
          ..add(MarketplaceBuyContainerInitialEvent()),
        child: MarketplaceBuyContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<MarketplaceBuyContainerBloc,
        MarketplaceBuyContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.marketplaceBuyPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
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
