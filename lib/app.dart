import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_localizations/jaspr_localizations.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'package:website_2026/components/header.dart';
import 'package:website_2026/generated/l10n.dart';
import 'package:website_2026/pages/about.dart';
import 'package:website_2026/pages/home.dart';
import 'package:website_2026/pages/speaker.dart';
import 'package:website_2026/pages/sponsor.dart';
import 'package:website_2026/pages/venue.dart';

class App extends StatelessComponent {
  const App({super.key});

@override
Component build(BuildContext context) {
    return JasprLocalizations(
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ja', 'JP'),
      ],
      initialLocale: getCurrentLocale(),
      delegates: [AppLocalizations.delegate],
      builder: (context, locale) => const AppShell(),
    );
  }
}

class AppShell extends StatelessComponent {
  const AppShell({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'main', [
      const Header(),

      Router(routes: [
        Route(
          path: '/',
          builder: (context, state) => div([
            const Home(),
            const Speaker(),
            const Venue(),
            const Sponsor(),
          ]),
        ),
        Route(
          path: '/about',
          builder: (context, state) => const About(),
        ),
      ]),

      footer([
        div(classes: 'container', [
          p([
            Component.text('© 2021-2026 FlutterKaigi Executive Committee. Built with Jaspr.'),
          ]),
          p([
            Component.text('Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.'),
            Component.text('The Flutter name and the Flutter logo are trademarks of Google LLC.'),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('html').styles(
      // custom: {'scroll-behavior': 'smooth'},
      fontFamily: FontFamily('system-ui, -apple-system, sans-serif'),
      raw: {
        'scroll-behavior': 'smooth',
      },
    ),

    css('body').styles(
      margin: Margin.zero,
      color: Color('#111827'),
      backgroundColor: Color('#F9FAFB'),
    ),

    css('.main').styles(
      display: Display.flex,
      flexDirection: FlexDirection.column,
    ),

    css('section', [
      css('&').styles(
        display: Display.flex,
        // minHeight: 100.vh,
        padding: Padding.symmetric(vertical: 100.px, horizontal: 20.px),
        flexDirection: FlexDirection.column,
        alignItems: AlignItems.center,
      ),
      css('.container').styles(
        width: 100.percent,
        maxWidth: 1100.px,
        margin: Margin.symmetric(horizontal: Unit.auto),
      ),
    ]),

    css('h2').styles(
      margin: Margin.only(bottom: 50.px),
      textAlign: TextAlign.center,
      fontSize: 3.rem,
      fontWeight: FontWeight.w800,
      letterSpacing: (-1).px,
    ),

    css('footer').styles(
      padding: Padding.all(40.px),
      color: Color('#9CA3AF'),
      textAlign: TextAlign.center,
      fontSize: 0.9.rem,
      backgroundColor: Color('#121212'),
    ),
  ];
}
