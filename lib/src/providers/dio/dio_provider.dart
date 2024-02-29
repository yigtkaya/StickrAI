import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stickerai/localization/language_provider.dart';
import 'package:stickerai/localization/languages/english.dart';
import 'package:stickerai/src/providers/dio/dio_state.dart';
import 'package:stickerai/src/providers/dio/interceptors/logger_interceptor.dart';

final dioProvider = StateProvider<DioState>(
  (ref) {
    //! IMPORTANT
    //? WHEN SSL CERTIFICATE EXPIRED
    final language = ref.watch(languageProvider);
    // final accessToken = ref.watch(bearerTokenProvider);
    // final region = ref.watch(customerRegionProvider);
    //final locale = '${language.id == arabic.id ? 'ar' : 'en'}-${region.isoCode ?? 'AE'}';
    final locale = language.id == english.id ? 'en-US' : 'tr-TR';
    final baseOptions = BaseOptions(
      baseUrl: "https://replicateapi.onrender.com",
      headers: {
        'Content-Type': 'application/json',
        // 'Channel': 'MerchantPortal',
        // if (accessToken.isNotEmpty) "Authorization": "Bearer $accessToken",
        // 'Language': language.urlCode,
      },
    );
    final dio = Dio(baseOptions);
    dio.interceptors.add(LoggerInterceptor());
    // dio.interceptors.add(RefreshTokenInterceptor());
    // dio.httpClientAdapter = IOHttpClientAdapter(
    //   createHttpClient: () {
    //     // Don't trust any certificate just because their root cert is trusted.
    //     final client = HttpClient(context: SecurityContext(withTrustedRoots: false));
    //     // You can test the intermediate / root cert here. We just ignore it.
    //     client.badCertificateCallback = (cert, host, port) => true;
    //     return client;
    //   },
    //   validateCertificate: (cert, host, port) {
    //     // Check that the cert fingerprint matches the one we expect.
    //     // We definitely require _some_ certificate.
    //     if (cert == null) {
    //       return false;
    //     }
    //     // Validate it any way you want. Here we only check that
    //     // the fingerprint matches the OpenSSL SHA256.
    //     return fingerprint == sha256.convert(cert.der).toString();
    //   },
    // );
    return DioState(dioClient: dio, locale: locale);
  },
);
