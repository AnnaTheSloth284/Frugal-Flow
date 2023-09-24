// ignore_for_file: must_be_immutable

part of 'checkout_buy_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckoutBuyOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckoutBuyOneEvent extends Equatable {}

/// Event that is dispatched when the CheckoutBuyOne widget is first created.
class CheckoutBuyOneInitialEvent extends CheckoutBuyOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends CheckoutBuyOneEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
