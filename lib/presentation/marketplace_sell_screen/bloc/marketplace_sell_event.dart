// ignore_for_file: must_be_immutable

part of 'marketplace_sell_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MarketplaceSell widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MarketplaceSellEvent extends Equatable {}

/// Event that is dispatched when the MarketplaceSell widget is first created.
class MarketplaceSellInitialEvent extends MarketplaceSellEvent {
  @override
  List<Object?> get props => [];
}
