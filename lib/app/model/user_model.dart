class UserModel {
  final String name;
  final String username;
  final String email;
  const UserModel(
      {required this.name, required this.username, required this.email});

  Map<String, dynamic> toJson() {
    return {"name": name, "username": username, "email": email};
  }
}
