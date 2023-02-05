import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:shop/shared/components/button.dart';
import 'package:shop/shared/components/text_reuse.dart';
import 'package:shop/shared/network/local/database.dart';

import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/states.dart';

class ProductsDetailsScreen extends StatelessWidget {
  int index = 0;
  int? id;

  ProductsDetailsScreen({
    super.key,
    required this.id,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()
        ..getDetailsFromApi(id)
        ..getDataFromApi(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext? context, AppStates? state) {},
        builder: (context, AppStates? state) {
          AppCubit cubit = BlocProvider.of(context);
          return cubit.details != null && cubit.products1 != null
              ? SafeArea(
                  child: Scaffold(
                    body: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        // color: Colors.grey[200],
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
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
                                    'http://${cubit.products1?.products?[index].imageUrl}',
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(35),
                                    topLeft: Radius.circular(35),
                                  ),
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                ),
                                child: SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextReuse(
                                              text:
                                                  '${cubit.products1?.products?[index].name}',
                                              maxLines: 3,
                                              size: 20,
                                              isBold: true,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                TextReuse(
                                                  text:
                                                      '${cubit.products1?.products?[index].price?.current?.text}',
                                                  size: 23,
                                                  isBold: true,
                                                ),
                                                Container(
                                                  width: 65,
                                                  height: 32,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.rectangle,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
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
                                                        MainAxisAlignment
                                                            .center,
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
                                              data: cubit.details!.description!,
                                              style: {
                                                "body": Style(
                                                  fontSize: FontSize(18.0),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 14.0,
                                  right: 14.0,
                                  bottom: 14.0,
                                  top: 8),
                              child: ButtonReuse(
                                buttonText: 'Add to Cart',
                                onPressed: () async {
                                  await cubit.insert(
                                    Product(
                                      productTitle: '${cubit.products1?.products?[index].name}',
                                      imageUrl: '${cubit.products1?.products?[index].imageUrl}',
                                      price: 100,
                                      isFav: false,
                                    ),

                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}
