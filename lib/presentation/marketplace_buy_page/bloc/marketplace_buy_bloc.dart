import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sectionlisttren_item_model.dart';
import 'package:anna_s_application1/presentation/marketplace_buy_page/models/marketplace_buy_model.dart';
part 'marketplace_buy_event.dart';
part 'marketplace_buy_state.dart';

/// A bloc that manages the state of a MarketplaceBuy according to the event that is dispatched to it.
class MarketplaceBuyBloc
    extends Bloc<MarketplaceBuyEvent, MarketplaceBuyState> {
  MarketplaceBuyBloc(MarketplaceBuyState initialState) : super(initialState) {
    on<MarketplaceBuyInitialEvent>(_onInitialize);
  }

  List<SectionlisttrenItemModel> fillSectionlisttrenItemList() {
    return [
      SectionlisttrenItemModel(groupBy: "Trending Stocks Today"),
      SectionlisttrenItemModel(groupBy: "Trending Stocks Today"),
      SectionlisttrenItemModel(groupBy: "Trending Stocks Today"),
      SectionlisttrenItemModel(groupBy: "Other Available Stocks"),
      SectionlisttrenItemModel(groupBy: "Other Available Stocks"),
      SectionlisttrenItemModel(groupBy: "Other Available Stocks")
    ];
  }

  _onInitialize(
    MarketplaceBuyInitialEvent event,
    Emitter<MarketplaceBuyState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        marketplaceBuyModelObj: state.marketplaceBuyModelObj?.copyWith(
            sectionlisttrenItemList: fillSectionlisttrenItemList())));
  }
}
