import 'dart:ffi';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/modules/products/products_details_screen.dart';
import 'package:shop/shared/components/button.dart';
import 'package:shop/shared/components/form_field.dart';
import 'package:shop/shared/components/text_reuse.dart';
import 'package:shop/shared/cubit/cubit.dart';
import 'package:shop/shared/cubit/states.dart';
import 'package:shop/shared/network/local/database.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, AppStates? state) {
        AppCubit cubit = BlocProvider.of(context);
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
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    25.0,
                                  ),
                                  side: BorderSide(
                                    color: Colors.grey,
                                    width: 0.4,
                                  ),
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
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                cubit.products1 != null ? Expanded(
                  child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: cubit.products1!.products!.length,
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.5,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) =>
                        InkWell(
                          onTap: () async {
                            await Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductsDetailsScreen(
                                      id: cubit.products1!.products![index].id,
                                      index: index,
                                    ),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      child: cubit.products1 != null
                                          ? Image(
                                        fit: BoxFit.scaleDown,
                                        image: NetworkImage(
                                            'http://${cubit.products1!
                                                .products![index].imageUrl}'),
                                      )
                                          : Center(
                                        child:
                                        CircularProgressIndicator(),
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
                                    '${cubit.products1!.products![index]
                                        .name}' ??
                                        '',
                                    maxLines: 2,
                                    isBold: true,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0, right: 8.0, left: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextReuse(
                                        text:
                                        '${cubit.products1!.products![index]
                                            .price!.current!.text}' ??
                                            '',
                                        isBold: true,
                                        size: 18,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.indigo,
                                              Colors.purple,
                                            ],
                                          ),
                                        ),
                                        child: IconButton(
                                          onPressed: () async {
                                            if(cubit.products.isNotEmpty){
                                              for (var value in cubit.products) {
                                                cubit.isExist =false;
                                                if( value.productTitle == cubit.products1?.products?[index].name){
                                                  cubit.isExist = true;
                                                  break;
                                                }
                                              }
                                              cubit.isExist == false ?  cubit.insert(Product(
                                                productTitle: cubit.products1
                                                    ?.products?[index].name,
                                                imageUrl: cubit.products1
                                                    ?.products?[index].imageUrl,
                                                price: cubit.products1
                                                    ?.products?[index].price
                                                    ?.current?.value?.toInt(),
                                                isFav: false,
                                              ),) : print('item is exist');
                                            }
                                            else
                                              {
                                              cubit.insert(Product(
                                                productTitle: cubit.products1
                                                    ?.products?[index].name,
                                                imageUrl: cubit.products1
                                                    ?.products?[index].imageUrl,
                                                price: cubit.products1
                                                    ?.products?[index].price
                                                    ?.current?.value?.toInt(),
                                                isFav: false,
                                              ),);
                                            }
                                          },
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
                ) : Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 4,
                      ),
                      CircularProgressIndicator(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ); /*: Center(child: CircularProgressIndicator(),);*/
      },
    );
  }
}
