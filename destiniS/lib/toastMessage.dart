import 'package:fluttertoast/fluttertoast.dart';

void showToastMessage(String message) => Fluttertoast.showToast(
  msg: message,
  gravity: ToastGravity.BOTTOM,
);

