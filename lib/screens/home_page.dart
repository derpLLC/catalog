import 'dart:convert';

import 'package:catalog/models/catalog.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:catalog/widgets/item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productData = decodeData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GridTile(
                      header: Container(
                        child: Text(
                          item.name,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                        ),
                      ),
                      child: Image.network(item.image),
                      footer: Container(
                        child: Text(
                          item.price.toString(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
