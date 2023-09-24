import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anna_s_application1/presentation/dashboard_menu_screen/models/dashboard_menu_model.dart';
part 'dashboard_menu_event.dart';
part 'dashboard_menu_state.dart';

/// A bloc that manages the state of a DashboardMenu according to the event that is dispatched to it.
class DashboardMenuBloc extends Bloc<DashboardMenuEvent, DashboardMenuState> {
  DashboardMenuBloc(DashboardMenuState initialState) : super(initialState) {
    on<DashboardMenuInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DashboardMenuInitialEvent event,
    Emitter<DashboardMenuState> emit,
  ) async {}
}
