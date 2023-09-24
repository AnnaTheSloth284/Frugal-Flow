// ignore_for_file: must_be_immutable

part of 'marketplace_buy_container_bloc.dart';

/// Represents the state of MarketplaceBuyContainer in the application.
class MarketplaceBuyContainerState extends Equatable {
  MarketplaceBuyContainerState({this.marketplaceBuyContainerModelObj});

  MarketplaceBuyContainerModel? marketplaceBuyContainerModelObj;

  @override
  List<Object?> get props => [
        marketplaceBuyContainerModelObj,
      ];
  MarketplaceBuyContainerState copyWith(
      {MarketplaceBuyContainerModel? marketplaceBuyContainerModelObj}) {
    return MarketplaceBuyContainerState(
      marketplaceBuyContainerModelObj: marketplaceBuyContainerModelObj ??
          this.marketplaceBuyContainerModelObj,
    );
  }
}
