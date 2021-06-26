import 'package:flutter/material.dart';

import '../../../domain/category/category_model.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    Key? key,
    required this.categoryModel,
    required this.onTap,
  }) : super(key: key);

  final CategoryModel categoryModel;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: Offset(2, 2),
                spreadRadius: 1,
                blurRadius: 1,
                color: Colors.grey[300]!)
          ]),
      child: ListTile(
        onTap: onTap as void Function()?,
        title: Text(
          categoryModel.description!,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        trailing: Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Colors.grey[500], borderRadius: BorderRadius.circular(3)),
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
