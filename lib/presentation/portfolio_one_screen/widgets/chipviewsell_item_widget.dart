import '../models/chipviewsell_item_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewsellItemWidget extends StatelessWidget {
  ChipviewsellItemWidget(
    this.chipviewsellItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  ChipviewsellItemModel chipviewsellItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewsellItemModelObj.sellstock,
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer,
            fontSize: 16.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: chipviewsellItemModelObj.isSelected,
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
