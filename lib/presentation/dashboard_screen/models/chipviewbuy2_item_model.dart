// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipviewbuy2_item_widget] screen.
class Chipviewbuy2ItemModel extends Equatable {
  Chipviewbuy2ItemModel({
    this.buy = "Buy",
    this.isSelected = false,
  }) {}

  String buy;

  bool isSelected;

  Chipviewbuy2ItemModel copyWith({
    String? buy,
    bool? isSelected,
  }) {
    return Chipviewbuy2ItemModel(
      buy: buy ?? this.buy,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [buy, isSelected];
}
