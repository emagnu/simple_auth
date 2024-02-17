//   ///
//  Import LIBRAIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../pages/home_page.dart';
import '../services/auth_services.dart';
//  PARTS
//  PROVIDERS
//  //  //   ///

class AuthNotifier extends StateNotifier<bool> {
  final AuthServices _authServices;
  AuthNotifier(this._authServices) : super(false);

  login(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      state = true;

      await _authServices.login(email: email, password: password).then(
        (value) {
          state = false;
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const HomePage()));
        },
      );
      state = false;
    } catch (e) {
      state = false;
      debugPrint(e.toString());
    }
  }
}
