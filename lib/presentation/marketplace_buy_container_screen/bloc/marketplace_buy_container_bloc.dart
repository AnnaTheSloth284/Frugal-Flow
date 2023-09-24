import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anna_s_application1/presentation/marketplace_buy_container_screen/models/marketplace_buy_container_model.dart';
part 'marketplace_buy_container_event.dart';
part 'marketplace_buy_container_state.dart';

/// A bloc that manages the state of a MarketplaceBuyContainer according to the event that is dispatched to it.
class MarketplaceBuyContainerBloc
    extends Bloc<MarketplaceBuyContainerEvent, MarketplaceBuyContainerState> {
  MarketplaceBuyContainerBloc(MarketplaceBuyContainerState initialState)
      : super(initialState) {
    on<MarketplaceBuyContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MarketplaceBuyContainerInitialEvent event,
    Emitter<MarketplaceBuyContainerState> emit,
  ) async {}
}
