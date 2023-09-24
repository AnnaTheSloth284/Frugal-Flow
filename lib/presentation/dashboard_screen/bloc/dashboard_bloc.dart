import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewbuy2_item_model.dart';
import 'package:anna_s_application1/presentation/dashboard_screen/models/dashboard_model.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// A bloc that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(DashboardState initialState) : super(initialState) {
    on<DashboardInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<DashboardState> emit,
  ) {
    List<Chipviewbuy2ItemModel> newList = List<Chipviewbuy2ItemModel>.from(
        state.dashboardModelObj!.chipviewbuy2ItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        dashboardModelObj:
            state.dashboardModelObj?.copyWith(chipviewbuy2ItemList: newList)));
  }

  List<Chipviewbuy2ItemModel> fillChipviewbuy2ItemList() {
    return List.generate(3, (index) => Chipviewbuy2ItemModel());
  }

  _onInitialize(
    DashboardInitialEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        dashboardModelObj: state.dashboardModelObj
            ?.copyWith(chipviewbuy2ItemList: fillChipviewbuy2ItemList())));
  }
}
