import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/myshop_item_model.dart';
import 'package:anna_s_application1/presentation/marketplace_list_screen/models/marketplace_list_model.dart';
part 'marketplace_list_event.dart';
part 'marketplace_list_state.dart';

/// A bloc that manages the state of a MarketplaceList according to the event that is dispatched to it.
class MarketplaceListBloc
    extends Bloc<MarketplaceListEvent, MarketplaceListState> {
  MarketplaceListBloc(MarketplaceListState initialState) : super(initialState) {
    on<MarketplaceListInitialEvent>(_onInitialize);
  }

  List<MyshopItemModel> fillMyshopItemList() {
    return List.generate(3, (index) => MyshopItemModel());
  }

  _onInitialize(
    MarketplaceListInitialEvent event,
    Emitter<MarketplaceListState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        marketplaceListModelObj: state.marketplaceListModelObj
            ?.copyWith(myshopItemList: fillMyshopItemList())));
  }
}
