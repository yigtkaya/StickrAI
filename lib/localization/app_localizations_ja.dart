import 'app_localizations.dart';

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get onboardingFirstTitle => 'プロンプトで始めて、想像力を解き放ち、ステッカーの魔法で活気づくのを見ましょう！';

  @override
  String get onboardingDisclaimer =>
      'ステッカーはお使いのデバイスにのみ保存され、第三者と共有されることはなく、プロセスが完了した後すぐに削除されます。';

  @override
  String get onboardingSecondTitle =>
      '画像をアップロードし、プロンプトでサポートし、想像力を解き放ち、ステッカーの魔法で活気づくのを見ましょう！';

  @override
  String get devam => '続行';

  @override
  String get termsAndConditions => '利用規約';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get start => '開始';

  @override
  String get settings => '設定';

  @override
  String get upgradeToPro => 'Proにアップグレード';

  @override
  String get upgradeToProDescription =>
      '広告を削除し、すべてのステッカーをロック解除するなど、さらに多くの機能が利用できます！';

  @override
  String get shareThisApp => 'このアプリを共有';

  @override
  String get rateThisApp => 'このアプリを評価';

  @override
  String get sendFeedback => 'フィードバックを送信';

  @override
  String get faqs => 'よくある質問';

  @override
  String get yourStickers => 'あなたのステッカー';

  @override
  String get notCreatedAnySticker => 'まだステッカーを作成していません。';

  @override
  String get comingSoon => '近日公開';

  @override
  String get generateSticker => 'ステッカーを生成';

  @override
  String get startWithAPrompt => 'プロンプトで始める';

  @override
  String get promptHint => 'かわいい猫';

  @override
  String get promptCannotBeEmpty => 'プロンプトは空にできません';

  @override
  String get done => '完了';

  @override
  String get adjust => '調整';

  @override
  String get generateAgain => '再生成';

  @override
  String get saveSticker => 'ステッカーを保存';

  @override
  String get cannotSaveSticker => '画像を保存できません。後で再試行してください。';

  @override
  String get savedSuccessfully => 'ステッカーを正常に保存しました。';

  @override
  String get advancedSettings => '高度な設定';

  @override
  String get seed => 'シード';

  @override
  String get height => '高さ';

  @override
  String get width => '幅';

  @override
  String get steps => 'ステップ';

  @override
  String get upscale => 'アップスケール';

  @override
  String get upscaleSteps => 'アップスケールステップ';

  @override
  String get negativePrompt => 'ネガティブプロンプト';

  @override
  String get negativePromptHint => 'ステッカーにしたくないもの';
}
