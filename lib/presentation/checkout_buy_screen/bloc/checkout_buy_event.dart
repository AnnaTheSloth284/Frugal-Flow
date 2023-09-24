// ignore_for_file: must_be_immutable

part of 'checkout_buy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckoutBuy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckoutBuyEvent extends Equatable {}

/// Event that is dispatched when the CheckoutBuy widget is first created.
class CheckoutBuyInitialEvent extends CheckoutBuyEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends CheckoutBuyEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
