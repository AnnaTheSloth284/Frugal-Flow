// ignore_for_file: must_be_immutable

part of 'owner_stock_details_bloc.dart';

/// Represents the state of OwnerStockDetails in the application.
class OwnerStockDetailsState extends Equatable {
  OwnerStockDetailsState({
    this.searchController,
    this.ownerStockDetailsModelObj,
  });

  TextEditingController? searchController;

  OwnerStockDetailsModel? ownerStockDetailsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        ownerStockDetailsModelObj,
      ];
  OwnerStockDetailsState copyWith({
    TextEditingController? searchController,
    OwnerStockDetailsModel? ownerStockDetailsModelObj,
  }) {
    return OwnerStockDetailsState(
      searchController: searchController ?? this.searchController,
      ownerStockDetailsModelObj:
          ownerStockDetailsModelObj ?? this.ownerStockDetailsModelObj,
    );
  }
}
