// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'stockinfo_item_model.dart';

/// This class defines the variables used in the [marketplace_sell_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MarketplaceSellModel extends Equatable {
  MarketplaceSellModel({this.stockinfoItemList = const []}) {}

  List<StockinfoItemModel> stockinfoItemList;

  MarketplaceSellModel copyWith({List<StockinfoItemModel>? stockinfoItemList}) {
    return MarketplaceSellModel(
      stockinfoItemList: stockinfoItemList ?? this.stockinfoItemList,
    );
  }

  @override
  List<Object?> get props => [stockinfoItemList];
}
