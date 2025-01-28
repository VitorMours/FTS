import "../interfaces/user_interface.dart";

class UserRepository extends IUser {
  final String backEnd = "http://localhost:3000/api";

  @override
  void createUser() {}

  @override
  void deleteUser() {}

  @override
  void searchUser() {}
}
