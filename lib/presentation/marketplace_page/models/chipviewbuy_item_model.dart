// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipviewbuy_item_widget] screen.
class ChipviewbuyItemModel extends Equatable {
  ChipviewbuyItemModel({
    this.buy = "Buy",
    this.isSelected = false,
  }) {}

  String buy;

  bool isSelected;

  ChipviewbuyItemModel copyWith({
    String? buy,
    bool? isSelected,
  }) {
    return ChipviewbuyItemModel(
      buy: buy ?? this.buy,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [buy, isSelected];
}
