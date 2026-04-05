// ignore_for_file: type=lint

import 'package:intl/intl.dart' as intl;
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_localizations/jaspr_localizations.dart';

abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  /// Retrieve the [AppLocalizations] instance from the context.
  static AppLocalizations? of(BuildContext context) {
    // For Jaspr, we can't use Localizations.of() like Flutter
    // This would need to be implemented using Jaspr's provider system
    // For now, return null and let consumers handle this
    final provider = JasprLocalizationProvider.of(context);
    final currentLocale = provider.currentLocale;
    return AppLocalizations.from(currentLocale.languageCode);
  }

  /// The delegate for this localizations class.
  static const AppLocalizationsDelegate delegate = AppLocalizationsDelegate();

  /// A list of this localizations delegate along with default delegates.
  static const List<dynamic> localizationsDelegates = <dynamic>[
    delegate,
    // Additional delegates would go here for Jaspr framework
  ];

  /// A list of supported locales.
  static const List<String> supportedLocales = <String>[
    'en',
    'ja',

  ];

  /// A factory constructor to construct specific subclasses base on a locale.
  static AppLocalizations from(String locale) {
    switch (locale) {
      case 'en':
        return _AppLocalizationsEn();
      case 'ja':
        return _AppLocalizationsJa();

      default:
        return _AppLocalizationsEn();
    }
  }


  /// No description provided for date.
  ///
  /// In en, this message translates to:
  /// **'October 29 (Thu) - 30 (Fri), 2026'**
  String get date;


  /// No description provided for tagline1.
  ///
  /// In en, this message translates to:
  /// **'Meet, talk,'**
  String get tagline1;


  /// No description provided for tagline2.
  ///
  /// In en, this message translates to:
  /// **'and get fired up.'**
  String get tagline2;


  /// No description provided for message1.
  ///
  /// In en, this message translates to:
  /// **'FlutterNinjas and FlutterKaigi are merging.'**
  String get message1;


  /// No description provided for message2.
  ///
  /// In en, this message translates to:
  /// **'No streaming, on-site only. Get the excitement you can only get here.'**
  String get message2;


  /// No description provided for joinTheExcitement.
  ///
  /// In en, this message translates to:
  /// **'Join the excitement'**
  String get joinTheExcitement;


  /// No description provided for salesStartInJuly.
  ///
  /// In en, this message translates to:
  /// **'Sales start in late July (planned)'**
  String get salesStartInJuly;


  /// No description provided for readThePolicy.
  ///
  /// In en, this message translates to:
  /// **'Read the policy'**
  String get readThePolicy;


  /// No description provided for speaker.
  ///
  /// In en, this message translates to:
  /// **'Speakers'**
  String get speaker;


  /// No description provided for speakerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'We are looking for speakers to create the excitement of Flutter together.'**
  String get speakerSubtitle;


  /// No description provided for comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming Soon'**
  String get comingSoon;


  /// No description provided for callForSessions.
  ///
  /// In en, this message translates to:
  /// **'Call for Sessions'**
  String get callForSessions;


  /// No description provided for speakerRecruitmentStart.
  ///
  /// In en, this message translates to:
  /// **'The recruitment of session speakers is'**
  String get speakerRecruitmentStart;


  /// No description provided for speakerRecruitmentDate.
  ///
  /// In en, this message translates to:
  /// **'scheduled to start around June 2026.'**
  String get speakerRecruitmentDate;


  /// No description provided for speakerRecruitmentEnd.
  ///
  /// In en, this message translates to:
  /// **''**
  String get speakerRecruitmentEnd;


  /// No description provided for speakerRecruitmentHint.
  ///
  /// In en, this message translates to:
  /// **'Please check the official X for the latest information.'**
  String get speakerRecruitmentHint;


  /// No description provided for venue.
  ///
  /// In en, this message translates to:
  /// **'Venue'**
  String get venue;


  /// No description provided for venueName.
  ///
  /// In en, this message translates to:
  /// **'Hamamatsucho Convention Hall'**
  String get venueName;


  /// No description provided for venueAddress.
  ///
  /// In en, this message translates to:
  /// **'5th and 6th Floor, Nippon Life Hamamatsucho Crea Tower, 2-3-1 Hamamatsucho, Minato-ku, Tokyo 100-0005, Japan'**
  String get venueAddress;


  /// No description provided for accessByTrain.
  ///
  /// In en, this message translates to:
  /// **'6 minutes by train from JR Tokyo Station and JR Shinagawa Station'**
  String get accessByTrain;


  /// No description provided for accessBySubway.
  ///
  /// In en, this message translates to:
  /// **'Directly connected from Daimon Station, 2 minutes walk from JR Hamamatsucho Station'**
  String get accessBySubway;


  /// No description provided for openInGoogleMaps.
  ///
  /// In en, this message translates to:
  /// **'Open in Google Maps →'**
  String get openInGoogleMaps;


  /// No description provided for sponsor.
  ///
  /// In en, this message translates to:
  /// **'Sponsors'**
  String get sponsor;


  /// No description provided for platinumSponsors.
  ///
  /// In en, this message translates to:
  /// **'Platinum Sponsors'**
  String get platinumSponsors;


  /// No description provided for goldSponsors.
  ///
  /// In en, this message translates to:
  /// **'Gold Sponsors'**
  String get goldSponsors;


  /// No description provided for sponsorRecruitment.
  ///
  /// In en, this message translates to:
  /// **'Sponsor recruitment! Would your company like to support FlutterKaigi 2026?'**
  String get sponsorRecruitment;


  /// No description provided for requestSponsorshipMaterials.
  ///
  /// In en, this message translates to:
  /// **'Request sponsorship materials →'**
  String get requestSponsorshipMaterials;


  /// No description provided for aboutAndCommunity.
  ///
  /// In en, this message translates to:
  /// **'About FlutterKaigi & Community'**
  String get aboutAndCommunity;


  /// No description provided for conferenceDescription.
  ///
  /// In en, this message translates to:
  /// **'FlutterKaigi is a conference organized by the Flutter community. It provides a place for people who love Flutter to gather, share the latest information, and interact with each other.'**
  String get conferenceDescription;


  /// No description provided for organizer.
  ///
  /// In en, this message translates to:
  /// **'Organizer'**
  String get organizer;


  /// No description provided for conference.
  ///
  /// In en, this message translates to:
  /// **'FlutterKaigi'**
  String get conference;


  /// No description provided for organizerDescription.
  ///
  /// In en, this message translates to:
  /// **'FlutterKaigi is run by volunteers from the Flutter community. We aim to provide a place for people who love Flutter to gather, learn, and interact with each other.'**
  String get organizerDescription;


  /// No description provided for communityTitle.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get communityTitle;


  /// No description provided for communityDescription.
  ///
  /// In en, this message translates to:
  /// **'The community of FlutterKaigi is a place for people participating in FlutterKaigi to interact with each other.'**
  String get communityDescription;


  /// No description provided for supportBannerText.
  ///
  /// In en, this message translates to:
  /// **'Support FlutterKaigi'**
  String get supportBannerText;


  /// No description provided for viewGitHubRepo.
  ///
  /// In en, this message translates to:
  /// **'View GitHub Repository →'**
  String get viewGitHubRepo;


  /// No description provided for learnMore.
  ///
  /// In en, this message translates to:
  /// **'Learn more →'**
  String get learnMore;


}

/// Delegate class for AppLocalizations localizations.
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  /// A list of supported locales.
  static const List<Locale> supportedLocales = <Locale>[
        Locale('en'),
    Locale('ja'),

  ];

  /// Whether this delegate supports the given locale.
  @override
  bool isSupported(Locale locale) {
    return supportedLocales.any((l) => l.languageCode == locale.languageCode);
  }

  /// Load the localizations for the given locale.
  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations.from(locale.toLanguageTag());
  }
}


class _AppLocalizationsEn extends AppLocalizations {
  _AppLocalizationsEn([String locale = 'en']) : super(locale);

  
  @override
  String get date => 'October 29 (Thu) - 30 (Fri), 2026';


  @override
  String get tagline1 => 'Meet, talk,';


  @override
  String get tagline2 => 'and get fired up.';


  @override
  String get message1 => 'FlutterNinjas and FlutterKaigi are merging.';


  @override
  String get message2 => 'No streaming, on-site only. Get the excitement you can only get here.';


  @override
  String get joinTheExcitement => 'Join the excitement';


  @override
  String get salesStartInJuly => 'Sales start in late July (planned)';


  @override
  String get readThePolicy => 'Read the policy';


  @override
  String get speaker => 'Speakers';


  @override
  String get speakerSubtitle => 'We are looking for speakers to create the excitement of Flutter together.';


  @override
  String get comingSoon => 'Coming Soon';


  @override
  String get callForSessions => 'Call for Sessions';


  @override
  String get speakerRecruitmentStart => 'The recruitment of session speakers is';


  @override
  String get speakerRecruitmentDate => 'scheduled to start around June 2026.';


  @override
  String get speakerRecruitmentEnd => '';


  @override
  String get speakerRecruitmentHint => 'Please check the official X for the latest information.';


  @override
  String get venue => 'Venue';


  @override
  String get venueName => 'Hamamatsucho Convention Hall';


  @override
  String get venueAddress => '5th and 6th Floor, Nippon Life Hamamatsucho Crea Tower, 2-3-1 Hamamatsucho, Minato-ku, Tokyo 100-0005, Japan';


  @override
  String get accessByTrain => '6 minutes by train from JR Tokyo Station and JR Shinagawa Station';


  @override
  String get accessBySubway => 'Directly connected from Daimon Station, 2 minutes walk from JR Hamamatsucho Station';


  @override
  String get openInGoogleMaps => 'Open in Google Maps →';


  @override
  String get sponsor => 'Sponsors';


  @override
  String get platinumSponsors => 'Platinum Sponsors';


  @override
  String get goldSponsors => 'Gold Sponsors';


  @override
  String get sponsorRecruitment => 'Sponsor recruitment! Would your company like to support FlutterKaigi 2026?';


  @override
  String get requestSponsorshipMaterials => 'Request sponsorship materials →';


  @override
  String get aboutAndCommunity => 'About FlutterKaigi & Community';


  @override
  String get conferenceDescription => 'FlutterKaigi is a conference organized by the Flutter community. It provides a place for people who love Flutter to gather, share the latest information, and interact with each other.';


  @override
  String get organizer => 'Organizer';


  @override
  String get conference => 'FlutterKaigi';


  @override
  String get organizerDescription => 'FlutterKaigi is run by volunteers from the Flutter community. We aim to provide a place for people who love Flutter to gather, learn, and interact with each other.';


  @override
  String get communityTitle => 'Community';


  @override
  String get communityDescription => 'The community of FlutterKaigi is a place for people participating in FlutterKaigi to interact with each other.';


  @override
  String get supportBannerText => 'Support FlutterKaigi';


  @override
  String get viewGitHubRepo => 'View GitHub Repository →';


  @override
  String get learnMore => 'Learn more →';


}


class _AppLocalizationsJa extends AppLocalizations {
  _AppLocalizationsJa([String locale = 'ja']) : super(locale);

  
  @override
  String get date => '2026年10月29日(木)・30日(金)';


  @override
  String get tagline1 => '会って、話して、';


  @override
  String get tagline2 => '熱くなる。';


  @override
  String get message1 => 'FlutterNinjas と FlutterKaigi が合流。';


  @override
  String get message2 => '配信なし、現場主義。ここでしか得られない熱狂を。';


  @override
  String get joinTheExcitement => '熱狂に参加する';


  @override
  String get salesStartInJuly => '7末 販売開始 (予定)';


  @override
  String get readThePolicy => '開催方針を読む';


  @override
  String get speaker => 'スピーカー';


  @override
  String get speakerSubtitle => 'Flutter の熱狂を共に作り上げるスピーカーを募集します。';


  @override
  String get comingSoon => '近日公開';


  @override
  String get callForSessions => 'Call for Sessions';


  @override
  String get speakerRecruitmentStart => 'セッションスピーカーの募集は';


  @override
  String get speakerRecruitmentDate => '2026年6月ごろ';


  @override
  String get speakerRecruitmentEnd => '開始予定です。';


  @override
  String get speakerRecruitmentHint => '最新情報は公式Xでチェックしてください。';


  @override
  String get venue => '会場';


  @override
  String get venueName => '浜松町コンベンションホール';


  @override
  String get venueAddress => '〒100-0005 東京都港区浜松町2丁目3-1 日本生命浜松町クレアタワー 5階,6階';


  @override
  String get accessByTrain => 'JR東京駅・JR品川駅から電車で6分';


  @override
  String get accessBySubway => '大門駅から直結・JR浜松町駅から徒歩2分';


  @override
  String get openInGoogleMaps => 'Google Maps で開く →';


  @override
  String get sponsor => 'スポンサー';


  @override
  String get platinumSponsors => 'Platinum スポンサー';


  @override
  String get goldSponsors => 'Gold スポンサー';


  @override
  String get sponsorRecruitment => 'スポンサー募集中！あなたの企業も FlutterKaigi 2026 を応援しませんか？';


  @override
  String get requestSponsorshipMaterials => 'スポンサー資料を請求する →';


  @override
  String get aboutAndCommunity => 'FlutterKaigi について & コミュニティ';


  @override
  String get conferenceDescription => 'FlutterKaigi は、Flutter コミュニティが主催するカンファレンスです。Flutter を愛する人々が集まり、最新の情報を共有し、交流する場を提供します。';


  @override
  String get organizer => '主催';


  @override
  String get conference => 'FlutterKaigi';


  @override
  String get organizerDescription => 'FlutterKaigi は、Flutter コミュニティの有志によって運営されています。私たちは、Flutter を愛する人々が集まり、学び、交流する場を提供することを目指しています。';


  @override
  String get communityTitle => 'コミュニティ';


  @override
  String get communityDescription => 'FlutterKaigi のコミュニティは、FlutterKaigi に参加する人々が交流するための場所です。';


  @override
  String get supportBannerText => 'FlutterKaigi を支援する';


  @override
  String get viewGitHubRepo => 'GitHub リポジトリを見る →';


  @override
  String get learnMore => '詳しく見る →';


}

