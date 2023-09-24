import 'package:flutter/material.dart';
import 'package:anna_s_application1/presentation/get_started_screen/get_started_screen.dart';
import 'package:anna_s_application1/presentation/signup_screen/signup_screen.dart';
import 'package:anna_s_application1/presentation/verify_one_screen/verify_one_screen.dart';
import 'package:anna_s_application1/presentation/verify_two_screen/verify_two_screen.dart';
import 'package:anna_s_application1/presentation/login_screen/login_screen.dart';
import 'package:anna_s_application1/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:anna_s_application1/presentation/marketplace_buy_container_screen/marketplace_buy_container_screen.dart';
import 'package:anna_s_application1/presentation/marketplace_sell_screen/marketplace_sell_screen.dart';
import 'package:anna_s_application1/presentation/marketplace_list_screen/marketplace_list_screen.dart';
import 'package:anna_s_application1/presentation/list_form_one_screen/list_form_one_screen.dart';
import 'package:anna_s_application1/presentation/checkout_listing_screen/checkout_listing_screen.dart';
import 'package:anna_s_application1/presentation/dashboard_menu_screen/dashboard_menu_screen.dart';
import 'package:anna_s_application1/presentation/portfolio_one_screen/portfolio_one_screen.dart';
import 'package:anna_s_application1/presentation/checkout_buy_screen/checkout_buy_screen.dart';
import 'package:anna_s_application1/presentation/checkout_buy_one_screen/checkout_buy_one_screen.dart';
import 'package:anna_s_application1/presentation/sell_page_one_screen/sell_page_one_screen.dart';
import 'package:anna_s_application1/presentation/sell_owner_stocks_screen/sell_owner_stocks_screen.dart';
import 'package:anna_s_application1/presentation/owner_stock_details_screen/owner_stock_details_screen.dart';
import 'package:anna_s_application1/presentation/bid_accept_reject_screen/bid_accept_reject_screen.dart';
import 'package:anna_s_application1/presentation/set_new_stock_price_screen/set_new_stock_price_screen.dart';
import 'package:anna_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String marketplacePage = '/marketplace_page';

  static const String getStartedScreen = '/get_started_screen';

  static const String signupScreen = '/signup_screen';

  static const String verifyOneScreen = '/verify_one_screen';

  static const String verifyTwoScreen = '/verify_two_screen';

  static const String loginScreen = '/login_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String marketplaceBuyPage = '/marketplace_buy_page';

  static const String marketplaceBuyContainerScreen =
      '/marketplace_buy_container_screen';

  static const String marketplaceSellScreen = '/marketplace_sell_screen';

  static const String marketplaceListScreen = '/marketplace_list_screen';

  static const String listFormOneScreen = '/list_form_one_screen';

  static const String checkoutListingScreen = '/checkout_listing_screen';

  static const String dashboardMenuScreen = '/dashboard_menu_screen';

  static const String portfolioOneScreen = '/portfolio_one_screen';

  static const String checkoutBuyScreen = '/checkout_buy_screen';

  static const String checkoutBuyOneScreen = '/checkout_buy_one_screen';

  static const String sellPageOneScreen = '/sell_page_one_screen';

  static const String sellOwnerStocksScreen = '/sell_owner_stocks_screen';

  static const String ownerStockDetailsScreen = '/owner_stock_details_screen';

  static const String bidAcceptRejectScreen = '/bid_accept_reject_screen';

  static const String setNewStockPriceScreen = '/set_new_stock_price_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        getStartedScreen: GetStartedScreen.builder,
        signupScreen: SignupScreen.builder,
        verifyOneScreen: VerifyOneScreen.builder,
        verifyTwoScreen: VerifyTwoScreen.builder,
        loginScreen: LoginScreen.builder,
        dashboardScreen: DashboardScreen.builder,
        marketplaceBuyContainerScreen: MarketplaceBuyContainerScreen.builder,
        marketplaceSellScreen: MarketplaceSellScreen.builder,
        marketplaceListScreen: MarketplaceListScreen.builder,
        listFormOneScreen: ListFormOneScreen.builder,
        checkoutListingScreen: CheckoutListingScreen.builder,
        dashboardMenuScreen: DashboardMenuScreen.builder,
        portfolioOneScreen: PortfolioOneScreen.builder,
        checkoutBuyScreen: CheckoutBuyScreen.builder,
        checkoutBuyOneScreen: CheckoutBuyOneScreen.builder,
        sellPageOneScreen: SellPageOneScreen.builder,
        sellOwnerStocksScreen: SellOwnerStocksScreen.builder,
        ownerStockDetailsScreen: OwnerStockDetailsScreen.builder,
        bidAcceptRejectScreen: BidAcceptRejectScreen.builder,
        setNewStockPriceScreen: SetNewStockPriceScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: GetStartedScreen.builder
      };
}
