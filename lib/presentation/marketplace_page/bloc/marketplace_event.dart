// ignore_for_file: must_be_immutable

part of 'marketplace_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Marketplace widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MarketplaceEvent extends Equatable {}

/// Event that is dispatched when the Marketplace widget is first created.
class MarketplaceInitialEvent extends MarketplaceEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends MarketplaceEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
