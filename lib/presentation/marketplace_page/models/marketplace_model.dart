// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipviewbuy_item_model.dart';

/// This class defines the variables used in the [marketplace_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MarketplaceModel extends Equatable {
  MarketplaceModel({this.chipviewbuyItemList = const []}) {}

  List<ChipviewbuyItemModel> chipviewbuyItemList;

  MarketplaceModel copyWith({List<ChipviewbuyItemModel>? chipviewbuyItemList}) {
    return MarketplaceModel(
      chipviewbuyItemList: chipviewbuyItemList ?? this.chipviewbuyItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewbuyItemList];
}
