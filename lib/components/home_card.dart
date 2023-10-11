import 'package:flutter/material.dart';
import 'package:plant_shop/data/plant_list.dart';

class HomeCard extends StatelessWidget{

  final List<Plant> list;
  final int index;
  const HomeCard({super.key, required this.list, required this.index});

  @override
  Widget build(BuildContext context){
    final plantList = list;
    return Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outlineVariant,
                )
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          height: 200,
                          plantList[index].imageUrl[0],
                          fit: BoxFit.cover,
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                            padding: const EdgeInsets.only(left: 8.0),
                            width: 120.0,
                            child: Text(
                              plantList[index].name,
                              style: const TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                              softWrap: true,
                              maxLines: 2,
                              
                            ),
                          ),
                            Container(
                              padding: const EdgeInsets.only(left: 8.0, bottom: 10.0),
                              child: Text(
                                'Rp. ${(plantList[index].price~/1000)}.000',
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                    )
                  ],
                ),
            );
  }

}