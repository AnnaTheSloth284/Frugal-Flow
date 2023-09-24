// ignore_for_file: must_be_immutable

part of 'portfolio_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PortfolioOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PortfolioOneEvent extends Equatable {}

/// Event that is dispatched when the PortfolioOne widget is first created.
class PortfolioOneInitialEvent extends PortfolioOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends PortfolioOneEvent {
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
