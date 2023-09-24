// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'myshop_item_model.dart';

/// This class defines the variables used in the [marketplace_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MarketplaceListModel extends Equatable {
  MarketplaceListModel({this.myshopItemList = const []}) {}

  List<MyshopItemModel> myshopItemList;

  MarketplaceListModel copyWith({List<MyshopItemModel>? myshopItemList}) {
    return MarketplaceListModel(
      myshopItemList: myshopItemList ?? this.myshopItemList,
    );
  }

  @override
  List<Object?> get props => [myshopItemList];
}
