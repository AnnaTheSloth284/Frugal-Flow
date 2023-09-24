// ignore_for_file: must_be_immutable

part of 'dashboard_menu_bloc.dart';

/// Represents the state of DashboardMenu in the application.
class DashboardMenuState extends Equatable {
  DashboardMenuState({this.dashboardMenuModelObj});

  DashboardMenuModel? dashboardMenuModelObj;

  @override
  List<Object?> get props => [
        dashboardMenuModelObj,
      ];
  DashboardMenuState copyWith({DashboardMenuModel? dashboardMenuModelObj}) {
    return DashboardMenuState(
      dashboardMenuModelObj:
          dashboardMenuModelObj ?? this.dashboardMenuModelObj,
    );
  }
}
