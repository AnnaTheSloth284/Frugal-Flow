import 'package:anna_s_application1/core/app_export.dart';
import 'package:anna_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarSearchview extends StatelessWidget {
  AppbarSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 270.h,
        controller: controller,
        hintText: "lbl_search".tr,
        prefix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearch,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        suffix: Padding(
          padding: EdgeInsets.only(
            right: 15.h,
          ),
          child: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: Icon(
              Icons.clear,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ),
    );
  }
}
