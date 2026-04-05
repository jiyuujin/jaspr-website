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

  Component _footerLink(String url, String label, {String? className}) {
    return a(
      href: url,
      classes: className ?? 'footer-link',
      target: Target.blank,
      [Component.text(label)],
    );
  }

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
          div(classes: 'footer-social', [
            _footerLink('https://x.com/FlutterKaigi', 'X'),
            _footerLink('https://github.com/FlutterKaigi', 'GitHub'),
            _footerLink('https://discord.com/invite/Nr7H8JTJSF', 'Discord'),
            _footerLink('https://medium.com/flutterkaigi', 'Medium'),
          ]),
          div(classes: 'footer-archive', [
            span(classes: 'archive-label', [Component.text('Past Kaigis:')]),
            _footerLink('https://2025.flutterkaigi.jp/', '2025', className: 'archive-link'),
            _footerLink('https://2024.flutterkaigi.jp/', '2024', className: 'archive-link'),
            _footerLink('https://2023.flutterkaigi.jp/', '2023', className: 'archive-link'),
            _footerLink('https://2022.flutterkaigi.jp/', '2022', className: 'archive-link'),
            _footerLink('https://2021.flutterkaigi.jp/', '2021', className: 'archive-link'),
          ]),
          div(classes: 'footer-archive', [
            span(classes: 'archive-label', [Component.text('Past Ninjas:')]),
            _footerLink('https://flutterninjas.dev/', '2025', className: 'archive-link'),
            _footerLink('https://flutterninjas.dev/2024', '2024', className: 'archive-link'),
          ]),
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
      padding: Padding.symmetric(vertical: 80.px, horizontal: 40.px),
      color: Color('#9CA3AF'),
      textAlign: TextAlign.center,
      fontSize: 0.9.rem,
      backgroundColor: Color('#121212'),
    ),

    css('.footer-container').styles(
      maxWidth: 1100.px,
      margin: Margin.symmetric(horizontal: Unit.auto),
    ),

    css('.footer-links').styles(
      display: Display.flex,
      margin: Margin.only(bottom: 40.px),
      flexWrap: FlexWrap.wrap,
      justifyContent: JustifyContent.center,
      gap: Gap.all(30.px),
    ),

    css('.footer-social').styles(
      display: Display.flex,
      margin: Margin.only(bottom: 24.px),
      justifyContent: JustifyContent.center,
      gap: Gap.all(30.px),
    ),

    css('.footer-link').styles(
      transition: Transition('all', duration: Duration(milliseconds: 200)),
      color: Color('#F3F4F6'),
      fontSize: 1.rem,
      fontWeight: FontWeight.w700,
      textDecoration: TextDecoration.none,
      raw: {
        'letter-spacing': '0.02em',
      },
    ),

    css('.footer-link:hover').styles(
      transform: Transform.translate(y: (-2).px),
      color: Color('#007AFF'),
    ),

    css('.footer-archive').styles(
      display: Display.flex,
      margin: Margin.only(bottom: 8.px),
      flexWrap: FlexWrap.wrap,
      justifyContent: JustifyContent.center,
      alignItems: AlignItems.center,
      gap: Gap.all(16.px),
    ),

    css('.archive-label').styles(
      color: Color('#6B7280'),
      fontSize: 0.8.rem,
      fontWeight: FontWeight.bold,
      raw: {'text-transform': 'uppercase', 'letter-spacing': '0.05em'},
    ),

    css('.archive-link').styles(
      transition: Transition('color', duration: Duration(milliseconds: 200)),
      color: Color('#9CA3AF'),
      fontSize: 0.85.rem,
      textDecoration: TextDecoration.none,
      raw: {'border-bottom': '1px solid transparent'},
    ),

    css('.archive-link:hover').styles(
      color: Colors.white,
      raw: {'border-bottom-color': 'rgba(255,255,255,0.3)'},
    ),

    css('.footer-info').styles(
      display: Display.flex,
      padding: Padding.only(top: 40.px),
      flexDirection: FlexDirection.column,
      // borderTop: Border(width: 1.px, style: BorderStyle.solid, color: Color('#1F2937')),
      gap: Gap.all(12.px),
      raw: {
        'border-top': '1px solid #1F2937',
      },
    ),

    css('.legal-text').styles(
      maxWidth: 800.px,
      margin: Margin.symmetric(horizontal: Unit.auto),
      opacity: 0.8,
      fontSize: 0.75.rem,
      lineHeight: 1.6.em,
    ),
  ];
}
