import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/categories/itemListCategories.dart';

import 'package:flutter_01/src/model/categories_model.dart';
import 'package:flutter_01/src/model/construction_model.dart';

import '../components/app_bar.dart';
import '../components/construction/itemConstruction.dart';
import '../components/widgetButtonCustom.dart';

class ConstructionWorksScreen extends StatefulWidget {
  const ConstructionWorksScreen({Key? key}) : super(key: key);

  @override
  State<ConstructionWorksScreen> createState() =>
      _ConstructionWorksScreenState();
}

class _ConstructionWorksScreenState extends State<ConstructionWorksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Construction works'),
      body: _constructionBody(),
    );
  }

  Widget _constructionBody() {
    return Center(
      child: Column(
        children: [
          _searchByCategories(),
          const SizedBox(height: 40.0),
          Expanded(
            child: _listConstruction(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Expanded(
                  child: widgetcustombutton(
                      type: 'Skip', color: 0xffF2F2F2, textColor: 0xff838391),
                ),
                SizedBox(width: 15.0,),
                Expanded(
                  child: widgetcustombutton(
                      type: 'Done', color: 0xff20C3AF, textColor: 0xffF2F2F2),
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

  Widget _listConstruction() {
    return ListView.builder(
      itemCount: construction.length,
      itemBuilder: (_, index) => ItemConstruction(
        name: construction[index].name,
        index: construction[index].id,
      ),
    );
  }

  Widget item({required String name}) {
    return Text('$name');
  }
}
