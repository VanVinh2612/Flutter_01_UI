import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/categories/itemListCategories.dart';

import 'package:flutter_01/src/model/categories_model.dart';

import '../components/app_bar.dart';
import '../components/widgetButtonCustom.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Categories'),
      body: _categoriesBody(),
    );
  }

  Widget _categoriesBody() {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30.0),
            child: _searchByCategories(),
          ),
          Expanded(
            child: _listCategories(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Expanded(
                  child: widgetcustombutton(
                      type: 'Back', color: 0xffF2F2F2, textColor: 0xff838391),
                ),
                Expanded(
                  child: widgetcustombutton(
                      type: 'Next', color: 0xff20C3AF, textColor: 0xffF2F2F2),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _searchByCategories() {
    return Container(
      color: const Color(0xFFF7F7F7),
      height: 60,
      // width: 315,
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: const [
          Icon(Icons.search),
          SizedBox(
            width: 15,
          ),
          Text('Search by categories', style: TextStyle(fontSize: 16))
        ],
      ),
    );
  }

  Widget _listCategories() {
    return ListView.builder(
        itemCount: categories.length,
        itemBuilder: (_, index) => itemCategories(
            image: categories[index].image,
            name: categories[index].name,
            iconRight: categories[index].iconRight));
  }

  Widget item({required String name}) {
    return Text('$name');
  }

  Widget _buttonCategories(String type, int color, int textColor) {
    return Expanded(
      child: Container(
        height: 60.0,
        margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(color),
            onPrimary: Color(textColor),
          ),
          child: Text(
            '$type',
            style: const TextStyle(fontSize: 16),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
