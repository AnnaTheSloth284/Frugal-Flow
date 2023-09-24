// ignore_for_file: must_be_immutable

part of 'owner_stock_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OwnerStockDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OwnerStockDetailsEvent extends Equatable {}

/// Event that is dispatched when the OwnerStockDetails widget is first created.
class OwnerStockDetailsInitialEvent extends OwnerStockDetailsEvent {
  @override
  List<Object?> get props => [];
}
