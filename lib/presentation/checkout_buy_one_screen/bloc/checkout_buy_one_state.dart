// ignore_for_file: must_be_immutable

part of 'checkout_buy_one_bloc.dart';

/// Represents the state of CheckoutBuyOne in the application.
class CheckoutBuyOneState extends Equatable {
  CheckoutBuyOneState({
    this.searchController,
    this.radioGroup = "",
    this.checkoutBuyOneModelObj,
  });

  TextEditingController? searchController;

  CheckoutBuyOneModel? checkoutBuyOneModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        searchController,
        radioGroup,
        checkoutBuyOneModelObj,
      ];
  CheckoutBuyOneState copyWith({
    TextEditingController? searchController,
    String? radioGroup,
    CheckoutBuyOneModel? checkoutBuyOneModelObj,
  }) {
    return CheckoutBuyOneState(
      searchController: searchController ?? this.searchController,
      radioGroup: radioGroup ?? this.radioGroup,
      checkoutBuyOneModelObj:
          checkoutBuyOneModelObj ?? this.checkoutBuyOneModelObj,
    );
  }
}
