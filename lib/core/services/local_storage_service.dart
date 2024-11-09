import 'package:hive/hive.dart';

class MyPref {
  static Box<dynamic> box() {
    return Hive.box('raffle_hive');
  }

  static String get token => box().get('token', defaultValue: '').toString();
  static set token(String value) => box().put('token', value);
  static String get refreshToken =>
      box().get('refreshToken', defaultValue: '').toString();
  static set refreshToken(String value) => box().put('refreshToken', value);
  static String get email => box().get('email', defaultValue: '').toString();
  static set email(String value) => box().put('email', value);

  static String get ticketId =>
      box().get('ticket_id', defaultValue: '').toString();
  static set ticketId(String value) => box().put('ticket_id', value);

  static String get amount => box().get('amount', defaultValue: '').toString();
  static set amount(String value) => box().put('amount', value);

  static String get phoneNo => box().get('phone', defaultValue: '').toString();
  static set phoneNo(String value) => box().put('phone', value);

  static String get firstName =>
      box().get('first_name', defaultValue: '').toString();
  static set firstName(String value) => box().put('first_name', value);

  static String get accountCreated =>
      box().get('account_created', defaultValue: '').toString();
  static set accountCreated(String value) =>
      box().put('account_created', value);

  static String get userId => box().get('id', defaultValue: '').toString();
  static set userId(String value) => box().put('id', value);
  // islogged in
  static bool get isLoggedIn {
    final val = box().get('token', defaultValue: null) as String?;
    if (val == null) {
      return false;
    } else {
      return true;
    }
  }

  // save user
  static void saveUser(Map<String, dynamic> user) {
    box().put('user', user);
  }

 

  static Future<void> clearBoxes() async {
    await box().clear();
  }
}