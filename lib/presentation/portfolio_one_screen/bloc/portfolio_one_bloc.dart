import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewsell_item_model.dart';
import 'package:anna_s_application1/presentation/portfolio_one_screen/models/portfolio_one_model.dart';
part 'portfolio_one_event.dart';
part 'portfolio_one_state.dart';

/// A bloc that manages the state of a PortfolioOne according to the event that is dispatched to it.
class PortfolioOneBloc extends Bloc<PortfolioOneEvent, PortfolioOneState> {
  PortfolioOneBloc(PortfolioOneState initialState) : super(initialState) {
    on<PortfolioOneInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<PortfolioOneState> emit,
  ) {
    List<ChipviewsellItemModel> newList = List<ChipviewsellItemModel>.from(
        state.portfolioOneModelObj!.chipviewsellItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        portfolioOneModelObj: state.portfolioOneModelObj
            ?.copyWith(chipviewsellItemList: newList)));
  }

  List<ChipviewsellItemModel> fillChipviewsellItemList() {
    return List.generate(2, (index) => ChipviewsellItemModel());
  }

  _onInitialize(
    PortfolioOneInitialEvent event,
    Emitter<PortfolioOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        portfolioOneModelObj: state.portfolioOneModelObj?.copyWith(
      chipviewsellItemList: fillChipviewsellItemList(),
    )));
  }
}
