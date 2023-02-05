import 'package:shop/shared/network/remot/model/products.dart';
import 'package:shop/shared/network/remot/model_for_details/details.dart';

import '../network/remot/model/details.dart';

abstract class AppStates {}

class AppInitialState extends AppStates {}

class AppChangeBottomNavigationBarState extends AppStates {}

class AppGetDataFromApi extends AppStates {

  final TheMain products1;
  AppGetDataFromApi(this.products1);
}

class AppGetDetailsFromApi extends AppStates {

  final Details details;
  AppGetDetailsFromApi(this.details);

}

class AppProductError extends AppStates {}

class AppProductDetailsError extends AppStates {}

class AppProductDetails extends AppStates {}


class AppCreateDatabaseState extends AppStates{}

class AppInsertDatabaseState extends AppStates{}

class AppGetDatabaseState extends AppStates{}

class AppUpdateDatabaseState extends AppStates{}

class AppDeleteDatabaseState extends AppStates{}

class AppIsItemExistsState extends AppStates{}






