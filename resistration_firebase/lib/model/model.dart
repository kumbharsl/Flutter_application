class LoginModel {
  String name;
  String email;
  String password;

  LoginModel({
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, String> loginMap() {
    return {
      'name': name,
      'username': email,
      'password': password,
    };
  }

  @override
  String toString() {
    return "{name:$name, username:$email, password:$password}";
  }
}
