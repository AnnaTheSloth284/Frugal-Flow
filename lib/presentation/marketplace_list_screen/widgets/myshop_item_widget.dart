import '../models/myshop_item_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyshopItemWidget extends StatelessWidget {
  MyshopItemWidget(
    this.myshopItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MyshopItemModel myshopItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 93.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillTealA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShop1,
            height: 64.adaptSize,
            width: 64.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 21.v,
              right: 1.h,
              bottom: 17.v,
            ),
            child: Text(
              myshopItemModelObj.shopName!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
