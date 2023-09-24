// ignore_for_file: must_be_immutable

part of 'checkout_listing_bloc.dart';

/// Represents the state of CheckoutListing in the application.
class CheckoutListingState extends Equatable {
  CheckoutListingState({
    this.searchController,
    this.radioGroup = "",
    this.checkoutListingModelObj,
  });

  TextEditingController? searchController;

  CheckoutListingModel? checkoutListingModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        searchController,
        radioGroup,
        checkoutListingModelObj,
      ];
  CheckoutListingState copyWith({
    TextEditingController? searchController,
    String? radioGroup,
    CheckoutListingModel? checkoutListingModelObj,
  }) {
    return CheckoutListingState(
      searchController: searchController ?? this.searchController,
      radioGroup: radioGroup ?? this.radioGroup,
      checkoutListingModelObj:
          checkoutListingModelObj ?? this.checkoutListingModelObj,
    );
  }
}
