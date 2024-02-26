import 'dart:developer';

//* PARAMETERS CONST
const token = 'token';
const username = 'username';

//* ROUTE
const resetPassword = 'reset-password';

Future<void> handleDeepLink(
  String link,
) async {
  try {
    await Future.delayed(const Duration(milliseconds: 500));

    log(link.toString());

    //final storageService = LocalStorageService();
    // https://lokalexperience.com/signup?utm_referrer=d2t7vgya4dt8li
    //? PARAMETER VALUES
    var utmReferrer = '';
    const signUpWithAffiliate = 'signup';
    const fullUrl = 'https://lokalexperience.com/';
    link = Uri.decodeFull(link);

    log(link.toString());
    final root = link.split(fullUrl);
    final path = root[1].split('?')[0];

    switch (path) {
      case signUpWithAffiliate:
        try {
          final params = root[1].split('?')[1];
          utmReferrer = params[0].split('=')[1];
          await Future.delayed(const Duration(milliseconds: 500));
          saveReferrerCode(utmReferrer);
          // AppRouter.router.replaceNamed(
          //   RoutePath.signUp,
          //   queryParameters: {
          //     'utm_referrer': utmReferrer,
          //   },
          // );
        } catch (e) {
          log(e.toString());
        }
        break;
      default:
        log('$path UNIMPLEMENTED UNIVERSAL LINK TYPE');
        break;
    }

    //*DEEP LINK PART
    // if (!link.startsWith(fullUrl) && link.contains(resetPassword)) {
    //   var root = link.split("/#/");
    //   //var path = root[1].split('?')[0];
    //   if (root[1].contains(token) && root[1].contains(username)) {
    //     return;
    //   }
    // } else {
    //   uri.queryParameters.forEach(
    //     (k, v) {
    //       log('key: $k - value: $v');
    //       switch (k) {
    //         case token:
    //           tokenParam = v;
    //           break;
    //         case username:
    //           usernameParam = v;
    //           break;
    //         default:
    //           log('$k UNIMPLEMENTED DEEP LINK PARAMETER TYPE\nValue: $v');
    //       }
    //     },
    //   );

    //   var path = <String>[uri.host];
    //   if (uri.host == '') {
    //     path = uri.path.split('/');
    //   }

    //   // final pathDetailPart = path[path.length - 1];
    //   final actionPath = path.length == 1 ? path[0] : path[1];

    //   switch (actionPath) {
    //     case resetPassword:
    //       context.router.replace(
    //         ResetPasswordRoute(
    //           token: tokenParam.replaceAll(' ', '+'),
    //           username: usernameParam.replaceAll(' ', '+'),
    //         ),
    //       );
    //       break;
    //     default:
    //       log('${uri.host} UNIMPLEMENTED DEEP LINK TYPE');
    //   }
    // }
  } catch (e) {
    log('handleDeepLink error: $e');
    try {} catch (_) {}
  }
}

void saveReferrerCode(String? referrerCode) {
  if (referrerCode != null) {
    // hiveStorage.writeString(key: StorageKey.utmReferrer, value: referrerCode);
    // hiveStorage.writeMap(
    //   key: StorageKey.utmCachedTime,
    //   value: {
    //     'time': DateTime.now(),
    //   },
    // );
  }
}
