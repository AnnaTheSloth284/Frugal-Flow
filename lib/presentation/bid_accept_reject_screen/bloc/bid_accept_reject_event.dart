// ignore_for_file: must_be_immutable

part of 'bid_accept_reject_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BidAcceptReject widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BidAcceptRejectEvent extends Equatable {}

/// Event that is dispatched when the BidAcceptReject widget is first created.
class BidAcceptRejectInitialEvent extends BidAcceptRejectEvent {
  @override
  List<Object?> get props => [];
}
