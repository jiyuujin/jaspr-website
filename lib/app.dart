import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'package:jaspr_website/components/header.dart';
import 'package:jaspr_website/pages/about.dart';
import 'package:jaspr_website/pages/home.dart';
import 'package:jaspr_website/pages/speaker.dart';
import 'package:jaspr_website/pages/sponsor.dart';
import 'package:jaspr_website/pages/venue.dart';

class App extends StatelessComponent {
  const App({super.key});

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
          p([Component.text('© 2026 Jaspr Conference. Built with Jaspr.')]),
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
