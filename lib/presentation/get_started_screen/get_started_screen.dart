import 'bloc/get_started_bloc.dart';
import 'models/get_started_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<GetStartedBloc>(
        create: (context) => GetStartedBloc(
            GetStartedState(getStartedModelObj: GetStartedModel()))
          ..add(GetStartedInitialEvent()),
        child: GetStartedScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<GetStartedBloc, GetStartedState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 94.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLogo2,
                            height: 237.v,
                            width: 390.h),
                        Container(
                            width: 301.h,
                            margin: EdgeInsets.only(
                                left: 37.h, top: 43.v, right: 51.h),
                            child: Text("msg_easy_stock_investment".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineMedium!
                                    .copyWith(height: 1.29))),
                        Container(
                            width: 295.h,
                            margin: EdgeInsets.only(
                                left: 39.h, top: 1.v, right: 55.h),
                            child: Text("msg_screening_feature".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyMediumGray400
                                    .copyWith(height: 1.43))),
                        CustomElevatedButton(
                            height: 56.v,
                            text: "msg_let_s_get_started".tr,
                            margin: EdgeInsets.fromLTRB(22.h, 64.v, 38.h, 5.v),
                            buttonStyle: CustomButtonStyles.outlinePrimary,
                            buttonTextStyle: theme.textTheme.titleMedium!,
                            onTap: () {
                              onTapLetsget(context);
                            })
                      ]))));
    });
  }

  /// Navigates to the signupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the signupScreen.
  onTapLetsget(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
