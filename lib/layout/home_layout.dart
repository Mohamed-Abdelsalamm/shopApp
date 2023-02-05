import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/modules/account_screen.dart';
import 'package:shop/modules/home_screen.dart';
import 'package:shop/modules/login_screen.dart';
import 'package:shop/shared/components/text_reuse.dart';
import 'package:shop/shared/cubit/cubit.dart';
import 'package:shop/shared/cubit/states.dart';
import '../modules/products/products_details_screen.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..getDataFromApi()..openData(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, Object? state) {},
        builder: (context, state) {
          AppCubit cubit = BlocProvider.of(context);
          return SafeArea(
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(60.0),
                child: AppBar(
                  title: Center(
                      child: TextReuse(
                    text: cubit.appBarTitle[cubit.currentIndex],
                    isBold: true,
                    size: 24,
                  )),
                  backgroundColor: Colors.grey[100],
                  elevation: 0,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 40,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.indigo, Colors.purple],
                          ),
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.teal,
                        ),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                          },
                          icon: const Icon(
                            Icons.shopping_cart,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 4.0, right: 4.0),
                      child: Container(
                        width: 40,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.indigo, Colors.purple],
                          ),
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.teal,
                        ),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              body: cubit.screens[cubit.currentIndex],
              bottomNavigationBar: Container(
                decoration: BoxDecoration(),
                child: BottomNavigationBar(
                    selectedItemColor: Colors.purple,
                    type: BottomNavigationBarType.fixed,
                    currentIndex: cubit.currentIndex,
                    elevation: 0,
                    onTap: (index) {
                      cubit.changeIndex(index);
                    },
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.person_outline,
                        ),
                        label: 'Account',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.favorite_border_outlined,
                        ),
                        label: 'Favorite',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home,
                        ),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                        ),
                        label: 'Cart',
                      ),
                    ]),
              ),
              floatingActionButton: FloatingActionButton(
                // backgroundColor: Colors.teal,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.indigo, Colors.purple],
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: Icon(
                    Icons.announcement,
                    size: 28,
                  )),
                ),
                onPressed: () {},
              ),
              drawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Container(
                      height: 100,
                      child: DrawerHeader(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.indigo, Colors.purple],
                          ),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                size: 40,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            TextReuse(
                              text: 'Mohamed Abdelsalam',
                              color: Colors.white,
                              size: 15,
                              isBold: true,
                            )
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(Icons.settings),
                        SizedBox(width: 10,),
                        TextReuse(text: 'Settings',color: Colors.black45,size: 16, isBold: true,)
                        ],
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(Icons.logout),
                          SizedBox(width: 10,),
                          TextReuse(text: 'Log Out',color: Colors.black45,size: 16, isBold: true,)
                        ],
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
