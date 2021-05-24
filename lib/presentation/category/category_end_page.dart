import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/category/category_cubit.dart';
import 'package:roomart/application/item/item_cubit.dart';
import 'package:roomart/domain/category/category_model.dart';
import 'package:roomart/presentation/widgets/item_list_widget.dart';

import '../../injection.dart';

class CategoryEndPage extends StatefulWidget {
  static final String TAG = '/category_end_page';
  @override
  _CategoryEndPageState createState() => _CategoryEndPageState();
}

class _CategoryEndPageState extends State<CategoryEndPage> {
  CategoryModel category;
  @override
  void initState() {
    category = Get.arguments as CategoryModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.description),
      ),
      body: BlocProvider(
        create: (context) => getIt<ItemCubit>()
          ..getItemListByCategoryId(categoryId: category.kategoriId),
        child: BlocConsumer<ItemCubit, ItemState>(
          listener: (context, state) {
            print(state);
          },
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => Container(
                    child: Center(child: CircularProgressIndicator())),
                loading: (e) {
                  return Container(
                      child: Center(child: CircularProgressIndicator()));
                },
                onGetItemByCategoryId: (e) {
                  return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: GridView.builder(
                          itemCount: e.data.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1 / 1.8,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return ItemListWidget(item: e.data[index]);
                          }));
                });
          },
        ),
      ),
    );
  }
}
