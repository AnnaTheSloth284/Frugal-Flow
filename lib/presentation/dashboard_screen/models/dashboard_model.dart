// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipviewbuy2_item_model.dart';

/// This class defines the variables used in the [dashboard_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel extends Equatable {
  DashboardModel({this.chipviewbuy2ItemList = const []}) {}

  List<Chipviewbuy2ItemModel> chipviewbuy2ItemList;

  DashboardModel copyWith({List<Chipviewbuy2ItemModel>? chipviewbuy2ItemList}) {
    return DashboardModel(
      chipviewbuy2ItemList: chipviewbuy2ItemList ?? this.chipviewbuy2ItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewbuy2ItemList];
}
