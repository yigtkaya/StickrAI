/// EMAIL REGEX
String emailRegex =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$'; //r'^[^@]+@[^@]+\.[^@]+'

String? phoneOTPValidator(String? value) {
  if (value!.toString().length != 6) {
    return "tr.yourVerificationCodeShouldBe6Digits";
  }
  return null;
}

/// EMAIL VALIDATION
String? emailValidator(value) {
  if (value!.toString().isEmpty) {
    return "tr.pleaseEnterAnEmailAddress";
  } else if (!RegExp(emailRegex).hasMatch(value)) {
    return "tr.yourEmailAddressIsInvalid";
  }
  return null;
}

/// TODO : Add phone validator