import 'package:flutter/material.dart';
import 'package:plant_shop/components/details_card.dart';
import 'package:plant_shop/data/plant_list.dart';

class DetailMobileScreen extends StatefulWidget {
  final Plant plant;
  const DetailMobileScreen({super.key, required this.plant});

  @override
  State<DetailMobileScreen> createState() => _DetailMobileScreen();
}

class _DetailMobileScreen extends State<DetailMobileScreen> {
  bool _isCartItem = false;
  @override
  Widget build(BuildContext context) {
    _isCartItem = widget.plant.cart;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          title: Text(
            widget.plant.name,
            style: const TextStyle(fontSize: 20.0),
          ),
          centerTitle: true,
          elevation: 1.0,
        ),
        body: SingleChildScrollView(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: constraints.maxHeight >= 800 ? 240 : 320,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              itemExtent:
                                  MediaQuery.of(context).size.width - 32.0,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    widget.plant.imageUrl[0],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    widget.plant.imageUrl[1],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    widget.plant.imageUrl[2],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(
                              widget.plant.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              widget.plant.desc,
                              style: const TextStyle(
                                fontSize: 14.0,
                              ),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          DetailsMobileCard(plant: widget.plant)
                        ],
                      );
                    },
                  )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Rp. ${(widget.plant.price ~/ 1000)}.000',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: FilledButton(
                              style: ButtonStyle(
                                  backgroundColor: _isCartItem
                                      ? MaterialStatePropertyAll(
                                          Theme.of(context)
                                              .colorScheme
                                              .secondary)
                                      : MaterialStatePropertyAll(
                                          Theme.of(context)
                                              .colorScheme
                                              .primary)),
                              onPressed: () {
                                setState(() {
                                  setState(() {
                                    _isCartItem = !_isCartItem;
                                  });
                                });
                                widget.plant.cart = _isCartItem;
                                plantList[plantList.indexOf(widget.plant)]
                                    .cart = _isCartItem;
                              },
                              child: Text(_isCartItem
                                  ? "Added to Cart"
                                  : "Add to Cart")),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ));
  }
}
