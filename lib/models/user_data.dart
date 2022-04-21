import 'package:eshop_food_app/models/user.dart';
import 'package:flutter/foundation.dart';

class UserData with ChangeNotifier {

  final String name = 'Tommy barral';
  final String job = 'dev';

  final List<User> _userInfo = [
    User(
        name: 'Tommy',
        subtitle: 'dev',
    ),
  ];

  List<User> get userInfo {
    return [..._userInfo];
  }
}