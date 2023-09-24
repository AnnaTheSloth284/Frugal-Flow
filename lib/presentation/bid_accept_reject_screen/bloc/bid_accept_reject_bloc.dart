import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anna_s_application1/presentation/bid_accept_reject_screen/models/bid_accept_reject_model.dart';
part 'bid_accept_reject_event.dart';
part 'bid_accept_reject_state.dart';

/// A bloc that manages the state of a BidAcceptReject according to the event that is dispatched to it.
class BidAcceptRejectBloc
    extends Bloc<BidAcceptRejectEvent, BidAcceptRejectState> {
  BidAcceptRejectBloc(BidAcceptRejectState initialState) : super(initialState) {
    on<BidAcceptRejectInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BidAcceptRejectInitialEvent event,
    Emitter<BidAcceptRejectState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
