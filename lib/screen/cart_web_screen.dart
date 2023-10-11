import 'package:flutter/material.dart';
import 'package:plant_shop/data/plant_list.dart';

class CartWebScreen extends StatefulWidget{
  const CartWebScreen({super.key});

  @override
  State<CartWebScreen> createState() => _CartWebScreen();
}

class _CartWebScreen extends State<CartWebScreen>{
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
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 290,
                      crossAxisCount: 4,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) {
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
                                  child: Stack(
                                    alignment: AlignmentDirectional.topEnd,
                                    children: [
                                      Expanded(
                                        child: Image.network(
                                        width: 400,
                                        height: 200,
                                        cartList[index].imageUrl[0],
                                        fit: BoxFit.cover,
                                      ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 8, right: 8.0),
                                        child: FilledButton(
                                        onPressed: (){
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(content: Text('Removed from cart items'))
                                          );
                                          setState(() {
                                            cartList[cartList.indexOf(cartList[index])].cart = false;
                                            cartList.removeAt(index);
                                          });
                                        }, 
                                        child: const Icon(Icons.delete)
                                      ),
                                      )
                                    ],
                                  )
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
                                        cartList[index].name,
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
                                          'Rp. ${(cartList[index].price~/1000)}.000',
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ],
                                  ),
                              )
                            ],
                          ),
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