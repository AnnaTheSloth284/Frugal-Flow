import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewbuy_item_model.dart';
import 'package:anna_s_application1/presentation/marketplace_page/models/marketplace_model.dart';
part 'marketplace_event.dart';
part 'marketplace_state.dart';

/// A bloc that manages the state of a Marketplace according to the event that is dispatched to it.
class MarketplaceBloc extends Bloc<MarketplaceEvent, MarketplaceState> {
  MarketplaceBloc(MarketplaceState initialState) : super(initialState) {
    on<MarketplaceInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<MarketplaceState> emit,
  ) {
    List<ChipviewbuyItemModel> newList = List<ChipviewbuyItemModel>.from(
        state.marketplaceModelObj!.chipviewbuyItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        marketplaceModelObj:
            state.marketplaceModelObj?.copyWith(chipviewbuyItemList: newList)));
  }

  List<ChipviewbuyItemModel> fillChipviewbuyItemList() {
    return List.generate(3, (index) => ChipviewbuyItemModel());
  }

  _onInitialize(
    MarketplaceInitialEvent event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        marketplaceModelObj: state.marketplaceModelObj
            ?.copyWith(chipviewbuyItemList: fillChipviewbuyItemList())));
  }
}
