import 'bloc/list_form_one_bloc.dart';
import 'models/list_form_one_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/core/utils/validation_functions.dart';
import 'package:anna_s_application1/presentation/marketplace_buy_page/marketplace_buy_page.dart';
import 'package:anna_s_application1/presentation/marketplace_page/marketplace_page.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:anna_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:anna_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:anna_s_application1/widgets/custom_bottom_bar.dart';
import 'package:anna_s_application1/widgets/custom_elevated_button.dart';
import 'package:anna_s_application1/widgets/custom_icon_button.dart';
import 'package:anna_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ListFormOneScreen extends StatelessWidget {
  ListFormOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ListFormOneBloc>(
        create: (context) => ListFormOneBloc(
            ListFormOneState(listFormOneModelObj: ListFormOneModel()))
          ..add(ListFormOneInitialEvent()),
        child: ListFormOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 45.h,
                leading: AppbarImage(
                    imagePath: ImageConstant.imgHamburger1,
                    margin:
                        EdgeInsets.only(left: 20.h, top: 15.v, bottom: 16.v)),
                centerTitle: true,
                title: BlocSelector<ListFormOneBloc, ListFormOneState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview(
                          hintText: "lbl_search".tr,
                          controller: searchController);
                    })),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
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
                          SizedBox(height: 31.v),
                          Text("msg_enter_the_details".tr,
                              style: CustomTextStyles.bodyLargeBlack90018),
                          SizedBox(height: 17.v),
                          BlocSelector<ListFormOneBloc, ListFormOneState,
                                  TextEditingController?>(
                              selector: (state) => state.nameController,
                              builder: (context, nameController) {
                                return CustomTextFormField(
                                    controller: nameController,
                                    hintText: "msg_enter_government".tr,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    },
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 10.v),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillGrayTL12,
                                    fillColor: appTheme.gray50);
                              }),
                          SizedBox(height: 11.v),
                          BlocSelector<ListFormOneBloc, ListFormOneState,
                                  TextEditingController?>(
                              selector: (state) => state.searchoneController,
                              builder: (context, searchoneController) {
                                return CustomTextFormField(
                                    controller: searchoneController,
                                    hintText: "msg_enter_your_registered".tr,
                                    textInputType: TextInputType.number,
                                    validator: (value) {
                                      if (!isNumeric(value)) {
                                        return "Please enter valid number";
                                      }
                                      return null;
                                    },
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 10.v),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillGrayTL12,
                                    fillColor: appTheme.gray50);
                              }),
                          Container(
                              width: 323.h,
                              margin: EdgeInsets.only(top: 13.v, right: 26.h),
                              child: Text("msg_upload_the_legal".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 3.v),
                          SizedBox(
                              width: 348.h,
                              child: Text("msg_lorem_ipsum_dolor".tr,
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodySmallGray400_1
                                      .copyWith(height: 1.25))),
                          SizedBox(height: 9.v),
                          CustomElevatedButton(
                              height: 26.v,
                              width: 105.h,
                              text: "lbl_upload".tr,
                              buttonTextStyle:
                                  CustomTextStyles.labelLargeOnPrimaryContainer,
                              onTap: () {
                                onTapUpload(context);
                              }),
                          SizedBox(height: 11.v),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.v),
                                child: Text("lbl_set_shares".tr,
                                    style: theme.textTheme.bodySmall)),
                            Spacer(),
                            CustomIconButton(
                                height: 26.adaptSize,
                                width: 26.adaptSize,
                                padding: EdgeInsets.all(5.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgFrame)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 32.h, top: 4.v, bottom: 4.v),
                                child: Text("lbl_8".tr,
                                    style: CustomTextStyles.titleSmall14_1)),
                            CustomIconButton(
                                height: 26.adaptSize,
                                width: 26.adaptSize,
                                margin: EdgeInsets.only(left: 32.h),
                                padding: EdgeInsets.all(5.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgFrameBlack900))
                          ]),
                          SizedBox(height: 16.v),
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.v),
                                child: Text("lbl_set_sold".tr,
                                    style: theme.textTheme.bodySmall)),
                            Spacer(),
                            CustomIconButton(
                                height: 26.adaptSize,
                                width: 26.adaptSize,
                                padding: EdgeInsets.all(5.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgFrame)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 24.h, top: 4.v, bottom: 4.v),
                                child: Text("lbl_570".tr,
                                    style: CustomTextStyles.titleSmall14_1)),
                            CustomIconButton(
                                height: 26.adaptSize,
                                width: 26.adaptSize,
                                margin: EdgeInsets.only(left: 23.h),
                                padding: EdgeInsets.all(5.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgFrameBlack900))
                          ]),
                          SizedBox(height: 13.v),
                          BlocSelector<ListFormOneBloc, ListFormOneState,
                                  TextEditingController?>(
                              selector: (state) => state.addressController,
                              builder: (context, addressController) {
                                return CustomTextFormField(
                                    controller: addressController,
                                    hintText: "msg_enter_your_address".tr,
                                    textInputAction: TextInputAction.done,
                                    maxLines: 4,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 30.v),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillGrayTL12,
                                    fillColor: appTheme.gray50);
                              }),
                          SizedBox(height: 35.v),
                          CustomElevatedButton(
                              height: 30.v,
                              width: 105.h,
                              text: "lbl_confirm".tr,
                              buttonTextStyle: CustomTextStyles
                                  .labelLargeOnPrimaryContainerSemiBold,
                              onTap: () {
                                onTapConfirm(context);
                              },
                              alignment: Alignment.centerRight),
                          SizedBox(height: 7.v)
                        ]))),
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

  /// Navigates to the marketplaceSellScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the marketplaceSellScreen.
  onTapUpload(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.marketplaceSellScreen,
    );
  }

  /// Navigates to the marketplaceSellScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the marketplaceSellScreen.
  onTapConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.marketplaceSellScreen,
    );
  }
}
