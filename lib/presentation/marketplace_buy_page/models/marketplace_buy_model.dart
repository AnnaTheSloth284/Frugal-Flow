// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sectionlisttren_item_model.dart';

/// This class defines the variables used in the [marketplace_buy_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MarketplaceBuyModel extends Equatable {
  MarketplaceBuyModel({this.sectionlisttrenItemList = const []}) {}

  List<SectionlisttrenItemModel> sectionlisttrenItemList;

  MarketplaceBuyModel copyWith(
      {List<SectionlisttrenItemModel>? sectionlisttrenItemList}) {
    return MarketplaceBuyModel(
      sectionlisttrenItemList:
          sectionlisttrenItemList ?? this.sectionlisttrenItemList,
    );
  }

  @override
  List<Object?> get props => [sectionlisttrenItemList];
}
