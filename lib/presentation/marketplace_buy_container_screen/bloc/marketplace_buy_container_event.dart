// ignore_for_file: must_be_immutable

part of 'marketplace_buy_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MarketplaceBuyContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MarketplaceBuyContainerEvent extends Equatable {}

/// Event that is dispatched when the MarketplaceBuyContainer widget is first created.
class MarketplaceBuyContainerInitialEvent extends MarketplaceBuyContainerEvent {
  @override
  List<Object?> get props => [];
}
