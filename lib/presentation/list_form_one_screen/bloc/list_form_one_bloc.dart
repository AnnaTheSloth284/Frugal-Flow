import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anna_s_application1/presentation/list_form_one_screen/models/list_form_one_model.dart';
part 'list_form_one_event.dart';
part 'list_form_one_state.dart';

/// A bloc that manages the state of a ListFormOne according to the event that is dispatched to it.
class ListFormOneBloc extends Bloc<ListFormOneEvent, ListFormOneState> {
  ListFormOneBloc(ListFormOneState initialState) : super(initialState) {
    on<ListFormOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ListFormOneInitialEvent event,
    Emitter<ListFormOneState> emit,
  ) async {
    emit(state.copyWith(
        searchController: TextEditingController(),
        nameController: TextEditingController(),
        searchoneController: TextEditingController(),
        addressController: TextEditingController()));
  }
}
