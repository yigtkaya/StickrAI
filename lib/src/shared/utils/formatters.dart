import 'package:flutter/services.dart';

const String enTrNotesRegex = r"[a-zA-Z0-9',.-_! ]";
const String enArNotesRegex = r"[a-zA-Z0-9\u0600-\u06FF',.-_! ]";
const String nameRegex = r"[a-z A-Z \u0600-\u06FF\u00a0' ]";
const String emailRegexp = r'[@a-zA-Z0-9+._-]';
const String phoneRegexp = '^[1-9][0-9- ]*\$';
const emojiRegex = '(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])';

List<TextInputFormatter> nameFormatter({required int length}) => [
      LengthLimitingTextInputFormatter(length),
      FilteringTextInputFormatter.deny(
        RegExp(
          emojiRegex,
        ),
      ),
      FilteringTextInputFormatter.allow(
        RegExp(
          nameRegex,
        ),
      ),
    ];

List<TextInputFormatter> notesFormatter() => [
      FilteringTextInputFormatter.deny(
        RegExp(
          emojiRegex,
        ),
      ),
      FilteringTextInputFormatter.allow(
        RegExp(
          enTrNotesRegex,
        ),
      ),
      LengthLimitingTextInputFormatter(
        255,
      ),
    ];

List<TextInputFormatter> otpFormatter() => [
      FilteringTextInputFormatter.digitsOnly,
      LengthLimitingTextInputFormatter(6),
    ];

List<TextInputFormatter> emailFormatter() => [
      FilteringTextInputFormatter.allow(
        RegExp(emailRegexp),
      ),
      FilteringTextInputFormatter.deny(RegExp(r'[]')),
    ];

List<TextInputFormatter> phoneFormatter({required int length}) => [
      LengthLimitingTextInputFormatter(
        length,
      ),
      FilteringTextInputFormatter.digitsOnly,
    ];

// List<TextInputFormatter> phoneAreaFormatter({required CountryWithPhoneCode country}) => [
//       LibPhonenumberTextFormatter(
//         phoneNumberType: PhoneNumberType.mobile,
//         phoneNumberFormat: PhoneNumberFormat.international,
//         country: country,
//         inputContainsCountryCode: false,
//         shouldKeepCursorAtEndOfInput: false,
//       ),
//       FilteringTextInputFormatter.allow(
//         RegExp(
//           phoneRegexp,
//         ),
//       ),
//     ];
