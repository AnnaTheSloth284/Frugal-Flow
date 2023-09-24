/// This class is used in the [myshop_item_widget] screen.
class MyshopItemModel {
  MyshopItemModel({
    this.shopName,
    this.id,
  }) {
    shopName = shopName ?? "My shop";
    id = id ?? "";
  }

  String? shopName;

  String? id;
}
