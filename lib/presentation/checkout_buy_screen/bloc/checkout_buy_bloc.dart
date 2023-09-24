import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anna_s_application1/presentation/checkout_buy_screen/models/checkout_buy_model.dart';
part 'checkout_buy_event.dart';
part 'checkout_buy_state.dart';

/// A bloc that manages the state of a CheckoutBuy according to the event that is dispatched to it.
class CheckoutBuyBloc extends Bloc<CheckoutBuyEvent, CheckoutBuyState> {
  CheckoutBuyBloc(CheckoutBuyState initialState) : super(initialState) {
    on<CheckoutBuyInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<CheckoutBuyState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _onInitialize(
    CheckoutBuyInitialEvent event,
    Emitter<CheckoutBuyState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      radioGroup: "",
    ));
  }
}
