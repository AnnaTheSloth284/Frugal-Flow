// ignore_for_file: must_be_immutable

part of 'marketplace_buy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MarketplaceBuy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MarketplaceBuyEvent extends Equatable {}

/// Event that is dispatched when the MarketplaceBuy widget is first created.
class MarketplaceBuyInitialEvent extends MarketplaceBuyEvent {
  @override
  List<Object?> get props => [];
}
