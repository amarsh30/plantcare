import 'package:flutter/material.dart';

import 'model/category_plant.dart';

class DetailPlantScreen extends StatelessWidget {
  final CategoryPlant? category;

  const DetailPlantScreen({Key? key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      category?.imageAssets ?? ""
                    ),
                  )
                ),
      ))

        ],
      )
    );
  }
}