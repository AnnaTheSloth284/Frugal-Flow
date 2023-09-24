import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anna_s_application1/presentation/checkout_listing_screen/models/checkout_listing_model.dart';
part 'checkout_listing_event.dart';
part 'checkout_listing_state.dart';

/// A bloc that manages the state of a CheckoutListing according to the event that is dispatched to it.
class CheckoutListingBloc
    extends Bloc<CheckoutListingEvent, CheckoutListingState> {
  CheckoutListingBloc(CheckoutListingState initialState) : super(initialState) {
    on<CheckoutListingInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<CheckoutListingState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _onInitialize(
    CheckoutListingInitialEvent event,
    Emitter<CheckoutListingState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      radioGroup: "",
    ));
  }
}
