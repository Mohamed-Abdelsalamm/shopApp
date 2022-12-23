import 'package:flutter/material.dart';

import '../shared/components/text_reuse.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}


class _FavouriteScreenState extends State<FavouriteScreen> {
  int indexo = 0 ;
  List categories = [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: Container(
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
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: TextButton(
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
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: TextButton(
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
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: TextButton(
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
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
        Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                child: Container(
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
                    onPressed: () {

                    },
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
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                child: TextButton(
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
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                child: TextButton(
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
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                child: TextButton(
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
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
      ],
    );
  }
}
