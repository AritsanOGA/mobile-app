class FormValidation {
  static String? stringValidation(String? string) =>
      string!.isEmpty ? 'Field cannot be empty' : null;

  static String? emailValidation(String? email) {
    bool validateEmail = RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email!);
    return validateEmail ? null : 'Enter valid email';
  }

  static String? passwordValidation(String? password) {
    bool validatePassword =
        RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&]{8,}$')
            .hasMatch(password!);
    bool validateLength = password.length < 6;
    if (!validatePassword && !validateLength) {
      return 'Password must contain at least one uppercase, one lowercase and special character and 8 character long';
    }
    return null;
  }

  static String? votersCardNumberValidation(String? votersCardNo) {
    if (votersCardNo == null || votersCardNo.isEmpty) {
      return 'Field cannot be empty';
    }

    if (votersCardNo.length != 12) {
      return 'Field should be exactly 12 characters';
    }
    return null;
  }

  static String? passportNumberValidation(String? passportNo) {
    if (passportNo == null || passportNo.isEmpty) {
      return 'Field cannot be empty';
    }

    if (passportNo.length != 9) {
      return 'Field should be exactly 9 characters';
    }
    if (!RegExp(r'^[a-zA-Z]').hasMatch(passportNo)) {
      return 'The Field must start with a letter';
    }
    bool alphanumeric = RegExp(r'^[a-zA-Z0-9]+$').hasMatch(passportNo);

    if (!alphanumeric) {
      return 'Please enter only alphanumeric characters';
    }
    bool containsLetter = RegExp(r'[a-zA-Z]').hasMatch(passportNo);
    bool containsNumber = RegExp(r'[0-9]').hasMatch(passportNo);

    if (!containsLetter || !containsNumber) {
      return 'Field must contain both letters and numbers';
    }

    return null;
  }

  static String? ninValidation(String? nin) =>
      nin!.length < 11 || nin.length > 11
          ? 'NIN must be 11 character long, Enter a valid nin number '
          : null;

  static String? phoneValidation(String? phone) {
    if (phone == null || phone.isEmpty) {
      return 'Please enter a phone number';
    } else if (phone.length != 11) {
      return 'Phone number must be exactly 11 digits';
    }
    return null;
  }

  static String? passwordMatchValidation(
          String? password, String passwordOne) =>
      password != passwordOne ? "Passwords do not match" : null;

  static String? plan2premiumValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an amount';
    }
    final intValue = int.tryParse(value);
    if (intValue == null) {
      return 'Please enter a valid amount';
    }
    if (intValue < 120000 || intValue > 249999) {
      return 'Amount must be between 120,000 and 249,999';
    }
    return null;
  }

  static String? plan2sumAssured(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an amount';
    }
    final intValue = int.tryParse(value);
    if (intValue == null) {
      return 'Please enter a valid amount';
    }
    if (intValue < 600 || intValue > 1200) {
      return 'Amount must be between 600 and 1,200';
    }
    return null;
  }

  static String? plan1premiumValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an amount';
    }
    final intValue = int.tryParse(value);
    if (intValue == null) {
      return 'Please enter a valid amount';
    }
    if (intValue < 18700 || intValue > 935000) {
      return 'Amount must be between 18,700 and 935,000';
    }
    return null;
  }

  static String? plan1sumAssured(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an amount';
    }
    final intValue = int.tryParse(value);
    if (intValue == null) {
      return 'Please enter a valid amount';
    }
    if (intValue < 1000000 || intValue > 5000000) {
      return 'Amount must be between 1,000,000 and 5,000,000';
    }
    return null;
  }

  static String? plan1Term(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a number';
    }
    final intValue = int.tryParse(value);
    if (intValue == null) {
      return 'Please enter a valid number';
    }
    if (intValue < 5 || intValue > 24) {
      return 'Number must be between 5 and 24';
    }
    return null;
  }

  static String? plan2Term(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a number';
    }
    final intValue = int.tryParse(value);
    if (intValue == null) {
      return 'Please enter a valid number';
    }
    if (intValue != 1) {
      return 'Number must be exactly 1';
    }
    return null;
  }
}