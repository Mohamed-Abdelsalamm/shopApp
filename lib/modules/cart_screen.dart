import 'package:flutter/material.dart';
import 'package:shop/modules/products/products_details_screen.dart';

import '../shared/components/text_reuse.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 8,bottom: 8, right: 14, left: 14),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductsDetailsScreen(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'http://images.asos-media.com/products/vans-lowland-cc-sneakers-in-cream-and-burgundy/203452762-1-cream',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextReuse(
                            text:
                                'Vans Lowland CC sneakers in cream and burgundy',
                            maxLines: 4,
                            isBold: true,
                            size: 16,
                          ),
                          TextReuse(
                            text: 'Total Price : 50.99\$',
                            size: 15,
                            color: Colors.brown,
                            isBold: true,
                          ),
                          Container(
                            width: 140,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey,width: 0),
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.indigo,
                                          Colors.purple
                                        ],
                                      ),
                                      borderRadius:
                                          BorderRadius.only(topLeft: Radius.circular(15),bottomLeft:Radius.circular(15), ),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                      ),
                                    )),
                                TextReuse(
                                  text: '1',
                                  isBold: true,
                                  size: 18,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.indigo,
                                        Colors.purple
                                      ],
                                    ),
                                    borderRadius:
                                    BorderRadius.only(topRight: Radius.circular(15),bottomRight:Radius.circular(15), ),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
