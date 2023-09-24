// ignore_for_file: must_be_immutable

part of 'marketplace_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MarketplaceList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MarketplaceListEvent extends Equatable {}

/// Event that is dispatched when the MarketplaceList widget is first created.
class MarketplaceListInitialEvent extends MarketplaceListEvent {
  @override
  List<Object?> get props => [];
}
