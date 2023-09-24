// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipviewsell_item_model.dart';

/// This class defines the variables used in the [portfolio_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PortfolioOneModel extends Equatable {
  PortfolioOneModel({this.chipviewsellItemList = const []}) {}

  List<ChipviewsellItemModel> chipviewsellItemList;

  PortfolioOneModel copyWith(
      {List<ChipviewsellItemModel>? chipviewsellItemList}) {
    return PortfolioOneModel(
      chipviewsellItemList: chipviewsellItemList ?? this.chipviewsellItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewsellItemList];
}
