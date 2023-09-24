// ignore_for_file: must_be_immutable

part of 'marketplace_list_bloc.dart';

/// Represents the state of MarketplaceList in the application.
class MarketplaceListState extends Equatable {
  MarketplaceListState({
    this.searchController,
    this.marketplaceListModelObj,
  });

  TextEditingController? searchController;

  MarketplaceListModel? marketplaceListModelObj;

  @override
  List<Object?> get props => [
        searchController,
        marketplaceListModelObj,
      ];
  MarketplaceListState copyWith({
    TextEditingController? searchController,
    MarketplaceListModel? marketplaceListModelObj,
  }) {
    return MarketplaceListState(
      searchController: searchController ?? this.searchController,
      marketplaceListModelObj:
          marketplaceListModelObj ?? this.marketplaceListModelObj,
    );
  }
}
