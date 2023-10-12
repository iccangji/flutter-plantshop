import 'package:flutter/material.dart';
import 'package:plant_shop/components/home_card.dart';
import 'package:plant_shop/data/plant_list.dart';
import 'package:plant_shop/screen/detail_web_screen.dart';
import 'package:plant_shop/screen/detail_mobile_screen.dart';

class GridItems extends StatelessWidget {
  final List<Plant> list;
  final int gridCount;
  const GridItems({super.key, required this.list, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 290,
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LayoutBuilder(builder: (context, constraints) {
                    return constraints.maxWidth <= 800
                        ? DetailMobileScreen(plant: list[index])
                        : DetailWebScreen(plant: list[index]);
                  });
                }));
              },
              child: HomeCard(list: list, index: index));
        },
        itemCount: list.length,
      ),
    ));
  }
}
