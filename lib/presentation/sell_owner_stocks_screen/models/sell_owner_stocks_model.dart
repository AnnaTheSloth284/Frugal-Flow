// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'stockinfo1_item_model.dart';

/// This class defines the variables used in the [sell_owner_stocks_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SellOwnerStocksModel extends Equatable {
  SellOwnerStocksModel({this.stockinfo1ItemList = const []}) {}

  List<Stockinfo1ItemModel> stockinfo1ItemList;

  SellOwnerStocksModel copyWith(
      {List<Stockinfo1ItemModel>? stockinfo1ItemList}) {
    return SellOwnerStocksModel(
      stockinfo1ItemList: stockinfo1ItemList ?? this.stockinfo1ItemList,
    );
  }

  @override
  List<Object?> get props => [stockinfo1ItemList];
}
