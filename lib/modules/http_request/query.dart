import 'package:flutter/material.dart';
import './service.dart';
import './models/user/user.dart';

mixin UserQuery<T extends StatefulWidget> on State<T> {
  bool isLoading = true;
  bool isSucess = false;
  bool isError = false;
  List<User> users = [];
  String? errorMessage;

  Future<void> getUsers() async {
    try {
      var (_, data) = await Service.fetchUsers();

      setState(() {
        isLoading = false;
        isSucess = true;
        users = data;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
        isError = true;
        errorMessage = e.toString();
      });
    }
  }
}
