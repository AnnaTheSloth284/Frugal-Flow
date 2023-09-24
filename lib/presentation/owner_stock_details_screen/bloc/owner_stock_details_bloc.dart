import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anna_s_application1/presentation/owner_stock_details_screen/models/owner_stock_details_model.dart';
part 'owner_stock_details_event.dart';
part 'owner_stock_details_state.dart';

/// A bloc that manages the state of a OwnerStockDetails according to the event that is dispatched to it.
class OwnerStockDetailsBloc
    extends Bloc<OwnerStockDetailsEvent, OwnerStockDetailsState> {
  OwnerStockDetailsBloc(OwnerStockDetailsState initialState)
      : super(initialState) {
    on<OwnerStockDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OwnerStockDetailsInitialEvent event,
    Emitter<OwnerStockDetailsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
