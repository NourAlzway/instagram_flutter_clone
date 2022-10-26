import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/models/user/user.model.dart';
import 'package:flutter_instagram_ui/repositories/users.repository.dart';
import 'package:flutter_instagram_ui/services/users.service.dart';

class UsersViewModel extends ChangeNotifier {
  UsersRepository usersRepository = UsersRepository(UserService());
  List<UserModel> usersList = [];
  bool isLoading = false;

  Future<void> loadUsers() async {
    isLoading = true;
    var result = await usersRepository.getAll();
    usersList = result;
    isLoading = false;
    notifyListeners();
  }

  UserModel getLoadedUserById(int id) {
    return usersList.firstWhere((element) => element.id == id);
  }
}
