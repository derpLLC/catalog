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
}