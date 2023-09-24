// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipviewsell_item_widget] screen.
class ChipviewsellItemModel extends Equatable {
  ChipviewsellItemModel({
    this.sellstock = "Sell Stock",
    this.isSelected = false,
  }) {}

  String sellstock;

  bool isSelected;

  ChipviewsellItemModel copyWith({
    String? sellstock,
    bool? isSelected,
  }) {
    return ChipviewsellItemModel(
      sellstock: sellstock ?? this.sellstock,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [sellstock, isSelected];
}
