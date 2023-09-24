// ignore_for_file: must_be_immutable

part of 'marketplace_sell_bloc.dart';

/// Represents the state of MarketplaceSell in the application.
class MarketplaceSellState extends Equatable {
  MarketplaceSellState({
    this.searchController,
    this.marketplaceSellModelObj,
  });

  TextEditingController? searchController;

  MarketplaceSellModel? marketplaceSellModelObj;

  @override
  List<Object?> get props => [
        searchController,
        marketplaceSellModelObj,
      ];
  MarketplaceSellState copyWith({
    TextEditingController? searchController,
    MarketplaceSellModel? marketplaceSellModelObj,
  }) {
    return MarketplaceSellState(
      searchController: searchController ?? this.searchController,
      marketplaceSellModelObj:
          marketplaceSellModelObj ?? this.marketplaceSellModelObj,
    );
  }
}
