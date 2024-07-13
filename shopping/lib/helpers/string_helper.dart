class StringHelper {
  static final StringHelper _singleton = StringHelper._internal();
  factory StringHelper() => _singleton;
  StringHelper._internal();

  static const String login = "Login";
  static const String enterEmail = "Enter Email";
  static const String enterPassword = "Enter Password";
}
