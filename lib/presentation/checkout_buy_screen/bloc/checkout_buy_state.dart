// ignore_for_file: must_be_immutable

part of 'checkout_buy_bloc.dart';

/// Represents the state of CheckoutBuy in the application.
class CheckoutBuyState extends Equatable {
  CheckoutBuyState({
    this.searchController,
    this.radioGroup = "",
    this.checkoutBuyModelObj,
  });

  TextEditingController? searchController;

  CheckoutBuyModel? checkoutBuyModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        searchController,
        radioGroup,
        checkoutBuyModelObj,
      ];
  CheckoutBuyState copyWith({
    TextEditingController? searchController,
    String? radioGroup,
    CheckoutBuyModel? checkoutBuyModelObj,
  }) {
    return CheckoutBuyState(
      searchController: searchController ?? this.searchController,
      radioGroup: radioGroup ?? this.radioGroup,
      checkoutBuyModelObj: checkoutBuyModelObj ?? this.checkoutBuyModelObj,
    );
  }
}
