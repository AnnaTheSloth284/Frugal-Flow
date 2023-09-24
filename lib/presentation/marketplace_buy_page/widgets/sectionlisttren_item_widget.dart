import '../models/sectionlisttren_item_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SectionlisttrenItemWidget extends StatelessWidget {
  SectionlisttrenItemWidget(
    this.sectionlisttrenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SectionlisttrenItemModel sectionlisttrenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      decoration: AppDecoration.fillTealA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 18.v,
              bottom: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_stock_name".tr,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 3.v),
                Text(
                  "lbl_price".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrame924,
            height: 84.v,
            width: 167.h,
            radius: BorderRadius.horizontal(
              right: Radius.circular(15.h),
            ),
          ),
        ],
      ),
    );
  }
}
