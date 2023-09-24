import '../models/chipviewbuy2_item_model.dart';
import 'package:anna_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chipviewbuy2ItemWidget extends StatelessWidget {
  Chipviewbuy2ItemWidget(
    this.chipviewbuy2ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Chipviewbuy2ItemModel chipviewbuy2ItemModelObj;

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
          chipviewbuy2ItemModelObj.buy,
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer,
            fontSize: 20.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: chipviewbuy2ItemModelObj.isSelected,
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
