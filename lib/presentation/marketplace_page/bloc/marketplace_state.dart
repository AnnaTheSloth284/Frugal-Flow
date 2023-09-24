// ignore_for_file: must_be_immutable

part of 'marketplace_bloc.dart';

/// Represents the state of Marketplace in the application.
class MarketplaceState extends Equatable {
  MarketplaceState({
    this.searchController,
    this.marketplaceModelObj,
  });

  TextEditingController? searchController;

  MarketplaceModel? marketplaceModelObj;

  @override
  List<Object?> get props => [
        searchController,
        marketplaceModelObj,
      ];
  MarketplaceState copyWith({
    TextEditingController? searchController,
    MarketplaceModel? marketplaceModelObj,
  }) {
    return MarketplaceState(
      searchController: searchController ?? this.searchController,
      marketplaceModelObj: marketplaceModelObj ?? this.marketplaceModelObj,
    );
  }
}
