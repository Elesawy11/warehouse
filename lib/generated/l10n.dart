// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Ease of Use`
  String get onboarding1Title {
    return Intl.message(
      'Ease of Use',
      name: 'onboarding1Title',
      desc: '',
      args: [],
    );
  }

  /// `An intuitive interface that requires no special skills allows users to quickly add, edit, and manage products effortlessly.`
  String get onboarding1Subtitle {
    return Intl.message(
      'An intuitive interface that requires no special skills allows users to quickly add, edit, and manage products effortlessly.',
      name: 'onboarding1Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Instant Updates`
  String get onboarding2Title {
    return Intl.message(
      'Instant Updates',
      name: 'onboarding2Title',
      desc: '',
      args: [],
    );
  }

  /// `All inventory changes are synchronized in real time, providing up-to-date stock information and enhancing decision-making processes.`
  String get onboarding2Subtitle {
    return Intl.message(
      'All inventory changes are synchronized in real time, providing up-to-date stock information and enhancing decision-making processes.',
      name: 'onboarding2Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Mobility and Accessibility`
  String get onboarding3Title {
    return Intl.message(
      'Mobility and Accessibility',
      name: 'onboarding3Title',
      desc: '',
      args: [],
    );
  }

  /// `Access your inventory from anywhere, at any time, and on any device, ensuring that you are always in control of your business.`
  String get onboarding3Subtitle {
    return Intl.message(
      'Access your inventory from anywhere, at any time, and on any device, ensuring that you are always in control of your business.',
      name: 'onboarding3Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Detailed Reports`
  String get onboarding4Title {
    return Intl.message(
      'Detailed Reports',
      name: 'onboarding4Title',
      desc: '',
      args: [],
    );
  }

  /// `Generate comprehensive reports on sales, stock, and profits to gain insights into your business and make informed decisions.`
  String get onboarding4Subtitle {
    return Intl.message(
      'Generate comprehensive reports on sales, stock, and profits to gain insights into your business and make informed decisions.',
      name: 'onboarding4Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueButton {
    return Intl.message('Continue', name: 'continueButton', desc: '', args: []);
  }

  /// `Skip`
  String get skipButton {
    return Intl.message('Skip', name: 'skipButton', desc: '', args: []);
  }

  /// `Get Started`
  String get getStartedButton {
    return Intl.message(
      'Get Started',
      name: 'getStartedButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message('Sign In', name: 'signIn', desc: '', args: []);
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Enter your email`
  String get enterEmail {
    return Intl.message(
      'Enter your email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enterPassword {
    return Intl.message(
      'Enter your password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message('Remember me', name: 'rememberMe', desc: '', args: []);
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Enter your name`
  String get enterName {
    return Intl.message(
      'Enter your name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `I give my consent to the processing of my personal data and accept the privacy policy`
  String get signupConsent {
    return Intl.message(
      'I give my consent to the processing of my personal data and accept the privacy policy',
      name: 'signupConsent',
      desc: '',
      args: [],
    );
  }

  /// `please enter your name`
  String get nameValidator {
    return Intl.message(
      'please enter your name',
      name: 'nameValidator',
      desc: '',
      args: [],
    );
  }

  /// `enter your password`
  String get passwordValidator {
    return Intl.message(
      'enter your password',
      name: 'passwordValidator',
      desc: '',
      args: [],
    );
  }

  /// `password is weak`
  String get passwordRegex {
    return Intl.message(
      'password is weak',
      name: 'passwordRegex',
      desc: '',
      args: [],
    );
  }

  /// `enter your email`
  String get emailValidator {
    return Intl.message(
      'enter your email',
      name: 'emailValidator',
      desc: '',
      args: [],
    );
  }

  /// `enter valid email`
  String get emailRegex {
    return Intl.message(
      'enter valid email',
      name: 'emailRegex',
      desc: '',
      args: [],
    );
  }

  /// `You must agree to the processing of your personal data and the privacy policy`
  String get checkBox {
    return Intl.message(
      'You must agree to the processing of your personal data and the privacy policy',
      name: 'checkBox',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
