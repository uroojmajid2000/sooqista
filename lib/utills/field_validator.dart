import 'package:sooqista_app/utills/regular_expressions.dart';

// import '../custom_imports/custom_utils_imports.dart';

extension FieldValidator on String {
  //-------------- Email Validator -------------------
  get validateEmail {
    if (!RegularExpressions.EMAIL_VALID_REGIX.hasMatch(this) && isNotEmpty) {
      return 'Invalid Email';
    } else if (isEmpty) {
      return 'Email is Empty';
    }
    return null;
  }

  // UserName Validation Method
  // String? get validateUserName {
  //   if (trim().isEmpty) {
  //     return AppStrings.USERNAME_EMPTY_ERROR_TEXT;
  //   } else if (!RegularExpressions.USER_NAME_REGEX.hasMatch(this)) {
  //     return AppStrings.USERNAME_INVALID_ERROR_TEXT;
  //   }
  //   // else if (contains(" ")) {
  //   //   return AppStrings.USERNAME_SPACE_ERROR_TEXT;
  //   // }
  //   return null;
  // }

  //---------------- Password Validator -----------------
  // validatePassword({bool? isPatternCheck = true}) {
  //   if (isEmpty) {
  //     return AppStrings.PASSWORD_EMPTY_ERROR;
  //   }
  //   if (isPatternCheck!) {
  //     if (!RegularExpressions.PASSWORD_VALID_REGIX.hasMatch(this) && isNotEmpty) {
  //       return AppStrings.PASSWORD_INVALID_ERROR;
  //     }
  //   }
  //   if (!isPatternCheck) {
  //     if (this.length < 8 && isNotEmpty) {
  //       return AppStrings.PASSWORD_INVALID_LENGTH_ERROR;
  //     }
  //   }
  //   return null;
  // }

  //--------------------- old password -----------------
  // get validateOldPassword {
  //   if (isEmpty) {
  //     return AppStrings.EXISTING_PASSWORD_EMPTY_ERROR;
  //   } /*else if (this.length < 8) {
  //     return AppStrings.PASSWORD_INVALID_LENGTH_ERROR;
  //   }*/ else if (!RegularExpressions.PASSWORD_VALID_REGIX.hasMatch(this) && isNotEmpty) {
  //     return AppStrings.PASSWORD_INVALID_ERROR;
  //   }
  //   return null;
  // }

  //---------------- Empty Validator -----------------
  validateEmpty(String message) {
    if (isEmpty) {
      // return '$message field_cant_be_empty';
      String returningString = 'field can\'t be empty';
      return '$message $returningString';
    } else {
      return null;
    }
  }

  //---------------- Phone Number Validator ----------
  get validatePhoneNumber {
    print("Number : " + this);
    if (isEmpty) {
      // return "validators.phoneNumber.emptyPhoneNumber";
      return "Phone number is empty";
    }
    if (length < 10) {
      print(this.length.toString());
      return "Invalid Phone Number";
      // return "validators.phoneNumber.invalidPhoneNumber";
    } else {
      print(this.length.toString());
      return null;
    }
  }
  // get validatePhoneNumber {
  //   final cleanedPhoneNumber = this.replaceAll(
  //       RegExp(r'[()-\s]'), ''); // Remove brackets, dashes, and spaces
  //   print("Number : $cleanedPhoneNumber");
  //   if (cleanedPhoneNumber.isEmpty) {
  //     return AppStrings.PHONE_NO_EMPTY_ERROR;
  //   }
  //   if (cleanedPhoneNumber.length < 10) {
  //     print(cleanedPhoneNumber.length.toString());
  //     return AppStrings.PHONE_NO_INVALID_LENGTH;
  //   } else {
  //     print(cleanedPhoneNumber.length.toString());
  //     return null;
  //   }
  // }

  //URL Validations

  validateEmptyURLFacebook(String message) {
    String WEBSITE_VALIDATION_REGEX =
        "https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,}";
    RegExp regExp = RegExp(WEBSITE_VALIDATION_REGEX);
    if (isEmpty) {
      return 'Facebook field can\'t be empty.';
    } else if (!regExp.hasMatch(message)) {
      return 'Please enter valid url';
    } else {
      return null;
    }
  }

  //Inta
  validateEmptyURLInsta(String message) {
    String WEBSITE_VALIDATION_REGEX =
        "https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,}";
    RegExp regExp = RegExp(WEBSITE_VALIDATION_REGEX);
    if (isEmpty) {
      return 'Instagram field can\'t be empty.';
    } else if (!regExp.hasMatch(message)) {
      return 'Please enter valid url';
    } else {
      return null;
    }
  }

  //Twitter
  validateEmptyURLTwitter(String message) {
    String WEBSITE_VALIDATION_REGEX =
        "https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,}";
    RegExp regExp = RegExp(WEBSITE_VALIDATION_REGEX);
    if (isEmpty) {
      return 'Twitter field can\'t be empty.';
    } else if (!regExp.hasMatch(message)) {
      return 'Please enter valid url';
    } else {
      return null;
    }
  }

  //Feedback
  validateEmptyURLFeedback(String message) {
    String WEBSITE_VALIDATION_REGEX =
        "https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,}";
    RegExp regExp = RegExp(WEBSITE_VALIDATION_REGEX);
    if (isEmpty) {
      return 'Feedback field can\'t be empty.';
    } else if (!regExp.hasMatch(message)) {
      return 'Please enter valid url';
    } else {
      return null;
    }
  }

  // String? hasValidUrl(String value) {
  //   //  String pattern = r'(http|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?';
  //   String WEBSITE_VALIDATION_REGEX =
  //       "https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,}";
  //   RegExp regExp = RegExp(WEBSITE_VALIDATION_REGEX);
  //   if (value.isEmpty) {
  //     return "$value${AppStrings.FACEBOOK_URL_EMPTY_ERROR}";
  //   } else if (!regExp.hasMatch(value)) {
  //     return 'Please enter valid url';
  //   }
  //   return null;
  // }

  //Description
  // String? get validateDescription {
  //   if (isEmpty) {
  //     return AppStrings.DESCRIPTION_EMPTY_ERROR;
  //   }
  //   // else if (length > 275) {
  //   //   return AppStrings.DESCRIPTION_TOO_LONG_ERROR;
  //   // }
  //   else {
  //     return null;
  //   }
  // }

//--------------Confirm Password Validator--------//
  // String? validateConfirmPassword(String password, String confirmPassword) {
  //   if (confirmPassword.isEmpty) {
  //     return AppStrings.CONFIRM_PASSWORD_EMPTY_ERROR;
  //   } else if (!(password == confirmPassword)) {
  //     return AppStrings.PASSWORD_DIFFERENT_ERROR;
  //   } else {
  //     return null;
  //   }
  // }

  get validateNewPassword {
    if (isEmpty) {
      // return "Password is empty";
      return "Password is Empty";
    } else if (this.length < 8) {
      // return "Password length should be greater than 8";
      return "Password length should be greater than 8";
    } else if (!RegularExpressions.PASSWORD_VALID_REGIX.hasMatch(this) &&
        isNotEmpty) {
      // return "This field requires Minimum 8 characters";
      return "This field requires Minimum 8 characters";
    }
    return null;
  }

  String? validateChangeNewPassword(String oldPassword, String newPassword) {
    if (newPassword.isEmpty) {
      return "Confrim Password is empty";
    } else if (newPassword.length < 8) {
      return "Password length should be greater than 8";
    } else if (!RegularExpressions.PASSWORD_VALID_REGIX.hasMatch(newPassword) &&
        isNotEmpty) {
      return "1 Special character, 1 Capital letter, 1 Number required";
      // return "validators.newPassword.invalidNewPassword";
    } else if (oldPassword != newPassword) {
      return "Password does not matched";
    } else {
      return null;
    }
  }

  //--------------New Confirm Password Validator--------//
  // String? validateNewConfirmPassword(String newPassword, String confirmPassword) {
  //   if (confirmPassword.isEmpty) {
  //     return AppStrings.CONFIRM_PASSWORD_EMPTY_ERROR;
  //   } else if (!(newPassword == confirmPassword)) {
  //     return AppStrings.NEW_PASSWORD_DIFFERENT_ERROR;
  //   } else {
  //     return null;
  //   }
  // }

  //--------------New Confirm Password Validator--------//
  // String? validateChangeNewConfirmPassword(String newPassword, String confirmPassword) {
  //   if (confirmPassword.isEmpty) {
  //     return AppStrings.CONFIRM_NEW_PASSWORD_EMPTY_ERROR;
  //   } else if (!(newPassword == confirmPassword)) {
  //     return AppStrings.CONFIRM_NEW_PASSWORD_DIFFERENT_ERROR;
  //   } else {
  //     return null;
  //   }
  // }

//---------------- OTP Validator ---------------
  String? validateOtp(String value) {
    if (value.length < 6) {
      // return "Password must be of 6 characters";
      return "validators.otp.shortOtp";
    }
    return null;
  }

//   String? validateEmpty(String value) {
//     if (value == '') {
//       return "Field can't be empty";
//     }
//     return null;
//   }

// get validateNewPassword {
//   if (isEmpty) {
//     return "New password field can't be empty";
//   } else if (!RegularExpressions.PASSWORD_VALID_REGIX.hasMatch(this) && isNotEmpty) {
//     return 'New ${AppStrings.PASSWORD_INVALID_ERROR_TEXT}';
//   }
//   return null;
// }
}
