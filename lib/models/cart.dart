import 'catalog.dart';

class CartModel {
  // Catalog Field
  CatalogModel _catalog;

  // Store Id of each item
  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  // Set Catalog
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get Total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add items to the cart
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove items from the cart
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
