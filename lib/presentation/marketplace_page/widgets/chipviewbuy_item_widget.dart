import '../models/chipviewbuy_item_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewbuyItemWidget extends StatelessWidget {
  ChipviewbuyItemWidget(
    this.chipviewbuyItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  ChipviewbuyItemModel chipviewbuyItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 25.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewbuyItemModelObj.buy,
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer,
            fontSize: 20.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: chipviewbuyItemModelObj.isSelected,
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
