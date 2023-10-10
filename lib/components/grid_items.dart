import 'package:flutter/material.dart';
import 'package:plant_shop/components/home_card.dart';
import 'package:plant_shop/data/plant_list.dart';

class GridItems extends StatefulWidget{
  final List<Plant> list;
  const GridItems({super.key, required this.list});

  @override
  State<GridItems> createState() => _GridItems();
}

class _GridItems extends State<GridItems>{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 290,
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: HomeCard(list: widget.list, index: index)
          );
        },
        itemCount: widget.list.length,
      ),
    );
  }
}