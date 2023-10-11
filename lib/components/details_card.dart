import 'package:flutter/material.dart';
import 'package:plant_shop/data/plant_list.dart';

class DetailsMobileCard extends StatelessWidget{
  final Plant plant;
  const DetailsMobileCard({super.key, required this.plant});
  @override
  Widget build(BuildContext context){
    return Container(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    width: 100,
                    height: 108.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.water_drop,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            plant.water,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    width: 100,
                    height: 108.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.sunny,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            plant.type,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    width: 100,
                    height: 108.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.thermostat,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            plant.temp,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ),
              ],
            )
          );
  } 
}

class DetailsWebCard extends StatelessWidget{
  final Plant plant;
  const DetailsWebCard({super.key, required this.plant});
  @override
  Widget build(BuildContext context){
    return Container(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 80.0,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.water_drop,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            plant.water,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 80.0,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.sunny,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            plant.type,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 80.0,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.thermostat,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            plant.temp,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ),
              ],
            )
          );
  } 
}