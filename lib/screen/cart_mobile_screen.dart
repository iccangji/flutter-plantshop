import 'package:flutter/material.dart';
import 'package:plant_shop/data/plant_list.dart';

class CartMobileScreen extends StatefulWidget{
  const CartMobileScreen({super.key});

  @override
  State<CartMobileScreen> createState() => _CartMobileScreen();
}

class _CartMobileScreen extends State<CartMobileScreen>{
  var cartList = plantList.where((element) => element.cart == true ).toList();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context); 
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Carts"),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: SafeArea(
          child: cartList.isNotEmpty ? SingleChildScrollView(
            child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Card(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.outlineVariant,
                            )
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(right: 8.0, top: 12.0, bottom: 12.0),
                            height: 120.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: SizedBox(
                                    width: 140.0,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                                        child: Image.network(
                                          cartList[index].imageUrl[0],
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                         Text(
                                          cartList[index].name,
                                          style: const TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          softWrap: true,
                                          maxLines: 2,
                                        ),
                                      Container(
                                        padding: const EdgeInsets.only(bottom: 10.0),
                                        child: Text(
                                          'Rp. ${(cartList[index].price~/1000)}.000',
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      ],
                                    ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      FilledButton(
                                        onPressed: (){
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(content: Text('Removed from cart items'))
                                          );
                                          setState(() {
                                            plantList[plantList.indexOf(cartList[index])].cart = false;
                                            cartList.removeAt(index);
                                          });
                                        }, 
                                        child: const Icon(Icons.delete)
                                      )
                                    ],
                                  )
                                )
                              ],
                            ),
                          )
                        );
                    },
                    itemCount: cartList.length,
                  ),
            ),
          ) : const Center(
            child: Text("No cart items"),
          )
        ),
    );
  }
}