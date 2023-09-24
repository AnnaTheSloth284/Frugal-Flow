import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stockinfo_item_model.dart';
import 'package:anna_s_application1/presentation/marketplace_sell_screen/models/marketplace_sell_model.dart';
part 'marketplace_sell_event.dart';
part 'marketplace_sell_state.dart';

/// A bloc that manages the state of a MarketplaceSell according to the event that is dispatched to it.
class MarketplaceSellBloc
    extends Bloc<MarketplaceSellEvent, MarketplaceSellState> {
  MarketplaceSellBloc(MarketplaceSellState initialState) : super(initialState) {
    on<MarketplaceSellInitialEvent>(_onInitialize);
  }

  List<StockinfoItemModel> fillStockinfoItemList() {
    return List.generate(5, (index) => StockinfoItemModel());
  }

  _onInitialize(
    MarketplaceSellInitialEvent event,
    Emitter<MarketplaceSellState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        marketplaceSellModelObj: state.marketplaceSellModelObj
            ?.copyWith(stockinfoItemList: fillStockinfoItemList())));
  }
}
