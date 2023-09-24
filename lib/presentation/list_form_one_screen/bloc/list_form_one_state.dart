// ignore_for_file: must_be_immutable

part of 'list_form_one_bloc.dart';

/// Represents the state of ListFormOne in the application.
class ListFormOneState extends Equatable {
  ListFormOneState({
    this.searchController,
    this.nameController,
    this.searchoneController,
    this.addressController,
    this.listFormOneModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? nameController;

  TextEditingController? searchoneController;

  TextEditingController? addressController;

  ListFormOneModel? listFormOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        nameController,
        searchoneController,
        addressController,
        listFormOneModelObj,
      ];
  ListFormOneState copyWith({
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? searchoneController,
    TextEditingController? addressController,
    ListFormOneModel? listFormOneModelObj,
  }) {
    return ListFormOneState(
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      searchoneController: searchoneController ?? this.searchoneController,
      addressController: addressController ?? this.addressController,
      listFormOneModelObj: listFormOneModelObj ?? this.listFormOneModelObj,
    );
  }
}
