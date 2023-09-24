// ignore_for_file: must_be_immutable

part of 'checkout_listing_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckoutListing widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckoutListingEvent extends Equatable {}

/// Event that is dispatched when the CheckoutListing widget is first created.
class CheckoutListingInitialEvent extends CheckoutListingEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends CheckoutListingEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
