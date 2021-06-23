import 'package:flutter/cupertino.dart';
import 'dart:convert';

class CatalogModel {
  static List<Item> items;

  // Get item by ID
  static Item getById(int id) => items.firstWhere((element) => element.id == id, orElse: null);

// Get item by Position
  static Item getByPosition(int pos) => items[pos];
}

class Item {
  int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    @required this.id,
    @required this.name,
    @required this.desc,
    @required this.price,
    @required this.color,
    @required this.image,
  });

  Item copyWith({
    int id,
    String name,
    String desc,
    num price,
    String color,
    String image,
  }) {
    if ((id == null || identical(id, this.id)) &&
        (name == null || identical(name, this.name)) &&
        (desc == null || identical(desc, this.desc)) &&
        (price == null || identical(price, this.price)) &&
        (color == null || identical(color, this.color)) &&
        (image == null || identical(image, this.image))) {
      return this;
    }

    return new Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  @override
  String toString() {
    return 'Item{id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Item &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          desc == other.desc &&
          price == other.price &&
          color == other.color &&
          image == other.image);

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;

  factory Item.fromMap(Map<String, dynamic> map) {
    return new Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'name': this.name,
      'desc': this.desc,
      'price': this.price,
      'color': this.color,
      'image': this.image,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}
