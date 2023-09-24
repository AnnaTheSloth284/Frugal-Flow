import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anna_s_application1/presentation/checkout_buy_one_screen/models/checkout_buy_one_model.dart';
part 'checkout_buy_one_event.dart';
part 'checkout_buy_one_state.dart';

/// A bloc that manages the state of a CheckoutBuyOne according to the event that is dispatched to it.
class CheckoutBuyOneBloc
    extends Bloc<CheckoutBuyOneEvent, CheckoutBuyOneState> {
  CheckoutBuyOneBloc(CheckoutBuyOneState initialState) : super(initialState) {
    on<CheckoutBuyOneInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<CheckoutBuyOneState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _onInitialize(
    CheckoutBuyOneInitialEvent event,
    Emitter<CheckoutBuyOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      radioGroup: "",
    ));
  }
}
