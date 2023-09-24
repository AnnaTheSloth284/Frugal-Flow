// ignore_for_file: must_be_immutable

part of 'dashboard_menu_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DashboardMenu widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DashboardMenuEvent extends Equatable {}

/// Event that is dispatched when the DashboardMenu widget is first created.
class DashboardMenuInitialEvent extends DashboardMenuEvent {
  @override
  List<Object?> get props => [];
}
