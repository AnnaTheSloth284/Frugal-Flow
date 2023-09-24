/// This class is used in the [sectionlisttren_item_widget] screen.
class SectionlisttrenItemModel {
  SectionlisttrenItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? "";
    id = id ?? "";
  }

  String? groupBy;

  String? id;
}
