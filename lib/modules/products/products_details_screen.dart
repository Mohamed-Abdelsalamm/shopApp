import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:shop/shared/components/button.dart';
import 'package:shop/shared/components/text_reuse.dart';

class ProductsDetailsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // gradient: LinearGradient(
                          //   colors: [Colors.indigo, Colors.purple],
                          // ),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {Navigator.of(context).pop();},
                          icon: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.purple,
                            size: 30,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // gradient: LinearGradient(
                          //   colors: [Colors.indigo, Colors.purple],
                          // ),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_outline,
                              color: Colors.purple,
                              size: 34,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 270,
                      width: 270,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200],
                      ),
                    ),
                    Image(
                      width: 210,
                      height: 210,
                      image: NetworkImage(
                        'http://images.asos-media.com/products/another-influence-arm-panel-crew-neck-sweat/9851612-1-black',
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35),
                      ),
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextReuse(
                                    text: 'Product Title',
                                    size: 25,
                                    isBold: true),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextReuse(
                                      text: '50\$',
                                      size: 22,
                                      isBold: true,
                                    ),
                                    Container(
                                      width: 65,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.indigo,
                                            Colors.purple
                                          ],
                                        ),
                                        color: Colors.purple,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TextReuse(
                                            text: '4.4',
                                            isBold: true,
                                            color: Colors.white,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 25,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Html(
                                  data:
                                  '<ul><li><a href="/men/hoodies-sweatshirts/cat/?cid=5668"><strong>Sweatshirt</strong></a> by Another Influence<ul> <li>One for your wardrobe </li> <li>Crew neck</li><li>Contrast sleeve panels </li> <li>Fitted trims</li><li>Regular fit </li><li>No surprises, just a classic cut</li></ul></li></ul>',
                                  style: {
                                    "body": Style(
                                      fontSize: FontSize(18.0),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  },
                                ),
                                /*ReadMoreText(.toString(),
                                  trimLines: 2,
                                  colorClickableText: Colors.pink,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'Show more',
                                  trimExpandedText: 'Show less',
                                  moreStyle:
                                  TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                ),*/
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14.0,),
                            child: ButtonReuse(
                              buttonText: 'Add to Cart',
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
