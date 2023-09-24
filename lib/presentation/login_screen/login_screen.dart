import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/core/utils/validation_functions.dart';
import 'package:anna_s_application1/widgets/custom_elevated_button.dart';
import 'package:anna_s_application1/widgets/custom_outlined_button.dart';
import 'package:anna_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 30.h, top: 158.v, right: 30.h),
                    child: Column(children: [
                      Text("lbl_login".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 30.v),
                      BlocSelector<LoginBloc, LoginState,
                              TextEditingController?>(
                          selector: (state) => state.emailController,
                          builder: (context, emailController) {
                            return CustomTextFormField(
                                controller: emailController,
                                hintText: "lbl_email".tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargeErrorContainer,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                });
                          }),
                      SizedBox(height: 20.v),
                      BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
                        return CustomTextFormField(
                            controller: state.passwordController,
                            hintText: "lbl_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  context.read<LoginBloc>().add(
                                      ChangePasswordVisibilityEvent(
                                          value: !state.isShowPassword));
                                },
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 14.v, 16.h, 14.v),
                                    child: CustomImageView(
                                        svgPath: state.isShowPassword
                                            ? ImageConstant.imgVerticalContainer
                                            : ImageConstant
                                                .imgVerticalContainer))),
                            suffixConstraints: BoxConstraints(maxHeight: 44.v),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "Please enter valid password";
                              }
                              return null;
                            },
                            obscureText: state.isShowPassword,
                            contentPadding: EdgeInsets.only(
                                left: 16.h, top: 13.v, bottom: 13.v));
                      }),
                      SizedBox(height: 22.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("msg_forgot_password".tr,
                              style: CustomTextStyles.titleSmallRed300)),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(
                          height: 56.v,
                          text: "lbl_login".tr,
                          buttonStyle: CustomButtonStyles.outlinePrimary,
                          buttonTextStyle: theme.textTheme.titleMedium!),
                      SizedBox(height: 21.v),
                      Text("msg_don_t_have_an_account".tr,
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 11.v),
                      CustomOutlinedButton(
                          text: "lbl_registration".tr,
                          onTap: () {
                            onTapRegistration(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the getStartedScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the getStartedScreen.
  onTapRegistration(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getStartedScreen,
    );
  }
}
