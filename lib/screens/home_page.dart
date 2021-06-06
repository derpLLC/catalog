import 'package:catalog/models/catalog.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:catalog/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
          itemBuilder: (context, index){
          return ItemWidget(
            item: CatalogModel.items[index],
          );
          }
      ),
      drawer: MyDrawer(),
    );
  }
}
