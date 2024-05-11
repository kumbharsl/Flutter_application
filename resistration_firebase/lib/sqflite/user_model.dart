class SignIn {
  String email;
  String password;
  String name;

  SignIn({required this.email, required this.password, required this.name});

  Map<String, String> singInMap() {
    return {'name': name, 'password': password, 'email': email};
  }
}
