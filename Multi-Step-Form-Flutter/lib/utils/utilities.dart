class Utilities {

  static bool isValidEmail(String email) {
    final RegExp regex = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return regex.hasMatch(email);
  }

  static bool isValidPhoneNumber(String phoneNumber) {
    final RegExp regex = RegExp(
        r"^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$");
    return regex.hasMatch(phoneNumber);
  }
}
