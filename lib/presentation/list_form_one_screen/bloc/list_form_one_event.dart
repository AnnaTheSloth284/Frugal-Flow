// ignore_for_file: must_be_immutable

part of 'list_form_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListFormOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListFormOneEvent extends Equatable {}

/// Event that is dispatched when the ListFormOne widget is first created.
class ListFormOneInitialEvent extends ListFormOneEvent {
  @override
  List<Object?> get props => [];
}
