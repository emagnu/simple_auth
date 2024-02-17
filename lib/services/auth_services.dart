//   ///
//  Import LIBRAIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//  Import FILES
//  PARTS
//  PROVIDERS
final authServicesProvider = Provider<AuthServices>((ref) {
  return AuthServices();
});
//  //  //   ///

class AuthServices {
  bool isLoggedIn = false;

  Future<bool> login({required String email, required String password}) async {
    await Future.delayed(const Duration(seconds: 3), () {
      isLoggedIn = true;
    });
    return isLoggedIn;
  }
}
