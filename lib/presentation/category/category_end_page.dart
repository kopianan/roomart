import 'package:flutter/material.dart';
import 'package:roomart/presentation/widgets/item_list_widget.dart';

class CategoryEndPage extends StatefulWidget {
  @override
  _CategoryEndPageState createState() => _CategoryEndPageState();
}

class _CategoryEndPageState extends State<CategoryEndPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return ItemListWidget(item: ,);
              })),
    );
  }
}