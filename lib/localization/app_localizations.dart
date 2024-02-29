import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_tr.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ja'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
    Locale('ru'),
    Locale('tr')
  ];

  /// No description provided for @onboardingFirstTitle.
  ///
  /// In en, this message translates to:
  /// **'Start with a prompt, unleash your imagination, and watch it come alive with the magic of stickers!'**
  String get onboardingFirstTitle;

  /// No description provided for @onboardingDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'Your stickers will only witheld in your device, it will not be shared with any third party and will be deleted immediately after the process is completed.'**
  String get onboardingDisclaimer;

  /// No description provided for @onboardingSecondTitle.
  ///
  /// In en, this message translates to:
  /// **'Upload your image, support with a prompt, unleash your imagination, and watch it come alive with the magic of stickers!'**
  String get onboardingSecondTitle;

  /// No description provided for @devam.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get devam;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConditions;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @upgradeToPro.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Pro'**
  String get upgradeToPro;

  /// No description provided for @upgradeToProDescription.
  ///
  /// In en, this message translates to:
  /// **'Remove ads, unlock all stickers, and more!'**
  String get upgradeToProDescription;

  /// No description provided for @shareThisApp.
  ///
  /// In en, this message translates to:
  /// **'Share this app'**
  String get shareThisApp;

  /// No description provided for @rateThisApp.
  ///
  /// In en, this message translates to:
  /// **'Rate this app'**
  String get rateThisApp;

  /// No description provided for @sendFeedback.
  ///
  /// In en, this message translates to:
  /// **'Send feedback'**
  String get sendFeedback;

  /// No description provided for @faqs.
  ///
  /// In en, this message translates to:
  /// **'FAQs'**
  String get faqs;

  /// No description provided for @yourStickers.
  ///
  /// In en, this message translates to:
  /// **'Your Stickers'**
  String get yourStickers;

  /// No description provided for @notCreatedAnySticker.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t created any stickers yet.'**
  String get notCreatedAnySticker;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingSoon;

  /// No description provided for @generateSticker.
  ///
  /// In en, this message translates to:
  /// **'Generate Sticker'**
  String get generateSticker;

  /// No description provided for @startWithAPrompt.
  ///
  /// In en, this message translates to:
  /// **'Start with a prompt'**
  String get startWithAPrompt;

  /// No description provided for @promptHint.
  ///
  /// In en, this message translates to:
  /// **'A cute cat'**
  String get promptHint;

  /// No description provided for @promptCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'Prompt cannot be empty'**
  String get promptCannotBeEmpty;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @adjust.
  ///
  /// In en, this message translates to:
  /// **'Adjust'**
  String get adjust;

  /// No description provided for @generateAgain.
  ///
  /// In en, this message translates to:
  /// **'Generate Again'**
  String get generateAgain;

  /// No description provided for @saveSticker.
  ///
  /// In en, this message translates to:
  /// **'Save Sticker'**
  String get saveSticker;

  /// No description provided for @cannotSaveSticker.
  ///
  /// In en, this message translates to:
  /// **'Cannot save image, please try again later.'**
  String get cannotSaveSticker;

  /// No description provided for @savedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Sticker saved successfully.'**
  String get savedSuccessfully;

  /// No description provided for @advancedSettings.
  ///
  /// In en, this message translates to:
  /// **'Advanced Settings'**
  String get advancedSettings;

  /// No description provided for @seed.
  ///
  /// In en, this message translates to:
  /// **'Seed'**
  String get seed;

  /// No description provided for @height.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get height;

  /// No description provided for @width.
  ///
  /// In en, this message translates to:
  /// **'Width'**
  String get width;

  /// No description provided for @steps.
  ///
  /// In en, this message translates to:
  /// **'Steps'**
  String get steps;

  /// No description provided for @upscale.
  ///
  /// In en, this message translates to:
  /// **'Upscale'**
  String get upscale;

  /// No description provided for @upscaleSteps.
  ///
  /// In en, this message translates to:
  /// **'Upscale Steps'**
  String get upscaleSteps;

  /// No description provided for @negativePrompt.
  ///
  /// In en, this message translates to:
  /// **'Negative Prompt'**
  String get negativePrompt;

  /// No description provided for @negativePromptHint.
  ///
  /// In en, this message translates to:
  /// **'Things you do not want in the sticker'**
  String get negativePromptHint;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ja',
        'de',
        'en',
        'es',
        'fr',
        'it',
        'ru',
        'tr'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ja':
      return AppLocalizationsJa();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'it':
      return AppLocalizationsIt();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
