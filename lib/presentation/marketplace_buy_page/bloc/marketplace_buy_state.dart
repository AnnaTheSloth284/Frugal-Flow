// ignore_for_file: must_be_immutable

part of 'marketplace_buy_bloc.dart';

/// Represents the state of MarketplaceBuy in the application.
class MarketplaceBuyState extends Equatable {
  MarketplaceBuyState({
    this.searchController,
    this.marketplaceBuyModelObj,
  });

  TextEditingController? searchController;

  MarketplaceBuyModel? marketplaceBuyModelObj;

  @override
  List<Object?> get props => [
        searchController,
        marketplaceBuyModelObj,
      ];
  MarketplaceBuyState copyWith({
    TextEditingController? searchController,
    MarketplaceBuyModel? marketplaceBuyModelObj,
  }) {
    return MarketplaceBuyState(
      searchController: searchController ?? this.searchController,
      marketplaceBuyModelObj:
          marketplaceBuyModelObj ?? this.marketplaceBuyModelObj,
    );
  }
}
