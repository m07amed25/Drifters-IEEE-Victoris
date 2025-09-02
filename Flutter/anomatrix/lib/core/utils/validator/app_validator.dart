class AppValidator {
  static String? validate({required String input, required ValidationType type}) {
    if (input.trim().isEmpty) {
      return "This field is required";
    }

    switch (type) {
      case ValidationType.email:
        final bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
        ).hasMatch(input);

        if (!emailValid) {
          return "Please enter a valid email address";
        }
        break;

      case ValidationType.password:
        if (input.length < 8) {
          return "Password must be at least 8 characters long";
        }
        if (!input.contains(RegExp(r'[A-Z]'))) {
          return "Password must contain an uppercase letter";
        }
        if (!input.contains(RegExp(r'[0-9]'))) {
          return "Password must contain a number";
        }
        if (!input.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
          return "Password must contain a special character";
        }
        break;

      case ValidationType.username:
        if(input == null || input.isEmpty ){
          return "Username is required";
        }
        break;
      case ValidationType.confirmpassword:
        if(input == null || input.isEmpty ){
          return "Username is required";
        }
        if (input != ValidationType.password) {
          return 'Password does not match' ;
        }
        break;

    }
    return null;
  }
}
enum ValidationType { email, password, username, confirmpassword }