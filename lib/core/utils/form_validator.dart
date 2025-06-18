class FormValidation {
  static String? stringValidation(String? string) =>
      string!.isEmpty ? 'Field cannot be empty' : null;

  static String? emailValidation(String? email) {
    bool validateEmail = RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email!);
    return validateEmail ? null : 'Enter valid email';
  }

  static String? validateFullName(String? value) {
    if (value == null) return 'Field cannot be empty';

    if (value.isEmpty) return 'Field cannot be empty';

    if (value.split(' ').length < 2) return 'Please enter your FULL NAME';
    return null;
  }

  static String? passwordValidation(String? password) {
    // Ensure password is not null
    if (password == null || password.isEmpty) {
      return 'Password cannot be empty';
    }
    if (password.length < 6) {
      return 'Password must be at least 8 characters long';
    }
    // Regex to validate password\\\\
    bool validatePassword = RegExp(
            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$')
        .hasMatch(password);

    // if (!validatePassword) {
    //   return 'Password include at least one uppercase letter, one lowercase letter, one number, and one special character';
    // }

    // Password is valid
    return null;
  }

  static String? confirmPasswordValidator(
      String? confirmPassword, String? password) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Please confirm your password';
    }
    if (confirmPassword != password) {
      return 'Passwords do not match';
    }
    return null; // Valid
  }

  static String? phoneValidation(String? phone) {
    if (phone == null || phone.isEmpty) {
      return 'Please enter a phone number';
    } else if (phone.length != 11) {
      return 'Phone number must be exactly 11 digits';
    }
    return null;
  }

  static String? dropdownValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select an option';
    }
    return null; // Valid value
  }
}
