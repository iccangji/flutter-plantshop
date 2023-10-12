import 'package:flutter/material.dart';
import 'package:plant_shop/components/details_card.dart';
import 'package:plant_shop/data/plant_list.dart';

class DetailWebScreen extends StatefulWidget {
  final Plant plant;
  const DetailWebScreen({super.key, required this.plant});

  @override
  State<DetailWebScreen> createState() => _DetailWebScreen();
}

class _DetailWebScreen extends State<DetailWebScreen> {
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
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: constraints.maxHeight >= 600
                  ? const NeverScrollableScrollPhysics()
                  : const AlwaysScrollableScrollPhysics(),
              child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 64.0, vertical: 32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 200,
                                width: 400,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    widget.plant.imageUrl[0],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 180,
                                    height: 180,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.network(
                                        widget.plant.imageUrl[1],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 32),
                                  SizedBox(
                                    width: 180,
                                    height: 180,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.network(
                                        widget.plant.imageUrl[2],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Expanded(
                              child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  widget.plant.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.0,
                                  ),
                                ),
                                Text(
                                  widget.plant.desc,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                  ),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                ),
                                DetailsWebCard(plant: widget.plant)
                              ],
                            ),
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Rp. ${(widget.plant.price ~/ 1000)}.000',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                              child: Padding(
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
                                    widget.plant.cart = _isCartItem;
                                  });
                                },
                                child: Text(_isCartItem
                                    ? "Added to Cart"
                                    : "Add to Cart")),
                          ))
                        ],
                      )
                    ],
                  )),
            );
          },
        ));
  }
}
