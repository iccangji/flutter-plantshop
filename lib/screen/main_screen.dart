import 'dart:io';

import 'package:flutter/material.dart';
import 'package:plant_shop/components/grid_items.dart';
import 'package:plant_shop/components/search_bar.dart';
import 'package:plant_shop/data/plant_list.dart';
import 'package:plant_shop/screen/cart_mobile_screen.dart';
import 'package:plant_shop/screen/cart_web_screen.dart';

class MainScreen extends StatefulWidget{
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreen();

}

class _MainScreen extends State<MainScreen>{
  var itemsList = plantList;
  

  void updateList(String query){
    if(query != ""){
      setState(() {
        itemsList = plantList.where((element) => element.name.toLowerCase().contains(query.toLowerCase())).toList();
      });
    }
    else{
      setState(() {
        itemsList = plantList;
      });

    }
  }

  @override
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop: (){
        exit(0);
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Find your\nfavorite plants!',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                      ),
                      FloatingActionButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return LayoutBuilder(
                              builder:(context, constraints) {
                                return constraints.maxWidth <= 800 ?
                                  const CartMobileScreen() : const CartWebScreen();
                              }
                            );
                          }));
                        },
                        elevation: 1.0,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Icon(Icons.shopping_cart_rounded, color: Theme.of(context).colorScheme.onPrimary,),
                      ) 
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: SearchBarApp(
                    searchCallback: updateList,
                  ),
                ),
                LayoutBuilder(
                  builder:(context, constraints) {
                    return constraints.maxWidth >= 768 ?
                      GridItems(
                      gridCount: 4,
                      list: itemsList,
                    ) : GridItems(
                      gridCount: 2,
                      list: itemsList, 
                    );
                  }
                )
              ],
            ),
          )
        ),
      ) 
    );
  }
}