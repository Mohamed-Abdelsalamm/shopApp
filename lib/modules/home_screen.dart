import 'dart:ffi';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop/modules/products/products_details_screen.dart';
import 'package:shop/shared/components/button.dart';
import 'package:shop/shared/components/form_field.dart';
import 'package:shop/shared/components/text_reuse.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    label: Text(
                      'search items...',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey[400],
                    )),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            TextReuse(
              text: 'Categories',
              isBold: true,
              size: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0, top: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.indigo, Colors.purple],
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextButton(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextReuse(
                            text: 'All',
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                25.0,
                              ),
                              /*side: BorderSide(
                                color: Colors.grey,
                                width: 0.4,
                              ),*/
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    TextButton(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextReuse(
                          text: 'Jeans',
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              25.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    TextButton(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextReuse(
                          text: 'Shoes, Boots & Sneakers',
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              25.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    TextButton(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextReuse(
                          text: 'Accessories',
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              25.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.5,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductsDetailsScreen(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              child: Image(
                                fit: BoxFit.scaleDown,
                                // width: 200,
                                // height: 210,
                                image: NetworkImage(
                                  'http://images.asos-media.com/products/vans-lowland-cc-sneakers-in-cream-and-burgundy/203452762-1-cream',
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor:
                                      Colors.white.withOpacity(0.4),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_outline,
                                      size: 30,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextReuse(
                              text:
                                  'Vans Lowland CC sneakers in cream and burgundy',
                              maxLines: 2,
                              isBold: true),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 8.0, right: 8.0, left: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextReuse(
                                text: '50.99 \$',
                                isBold: true,
                                size: 18,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [Colors.indigo, Colors.purple],
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_cart,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
