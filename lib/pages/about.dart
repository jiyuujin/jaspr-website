import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:website_2026/generated/l10n.dart';

class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return section(id: 'about', [
      div(classes: 'container', [
        h2([Component.text(l10n.aboutAndCommunity)]),
        p(classes: 'section-subtitle', [Component.text(l10n.conferenceDescription)]),

        div(classes: 'about-grid', [
          div(classes: 'about-card highlight', [
            h3([Component.text(l10n.organizer)]),
            p([Component.text(l10n.conference)]),
            p(classes: 'description', [
              Component.text(l10n.organizerDescription),
            ]),
          ]),

          _aboutItem(
            context,
            l10n.communityTitle, 
            l10n.communityDescription,
            'https://docs.google.com/forms/d/e/1FAIpQLSe6AhOMKNBHBOWtoT60f1MNNC2sk1RJ3K7sU_NsIJ1dVT2Q7A/viewform?usp=dialog'
          ),
        ]),

        div(classes: 'support-banner', [
          p([Component.text(l10n.supportBannerText)]),
          a(href: 'https://github.com/FlutterKaigi', target: Target.blank, classes: 'btn-outline', [
            Component.text(l10n.viewGitHubRepo),
          ]),
        ]),
      ]),
    ]);
  }

  Component _aboutItem(BuildContext context, String title, String desc, String url) {
    final l10n = AppLocalizations.of(context)!;

    return div(classes: 'about-card', [
      h3([Component.text(title)]),
      p(classes: 'description', [Component.text(desc)]),
      a(href: url, target: Target.blank, classes: 'text-link', [Component.text(l10n.learnMore)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('#about').styles(
      backgroundColor: Color('#F1F5F9'),
    ),

    css('.about-grid').styles(
      display: Display.grid,
      margin: Margin.only(top: 40.px),
      raw: {
        'grid-template-columns': 'repeat(auto-fit, minmax(300px, 1fr))',
        'gap': '24px',
      },
    ),

    css('.about-card', [
      css('&').styles(
        display: Display.flex,
        padding: Padding.all(32.px),
        radius: BorderRadius.circular(16.px),
        shadow: BoxShadow(
          blur: 15.px,
          color: Color('rgba(0,0,0,0.05)'),
          offsetX: 0.px,
          offsetY: 4.px,
        ),
        flexDirection: FlexDirection.column,
        backgroundColor: Colors.white,
      ),
      css('&.highlight').styles(
        raw: {'border-top': '4px solid #007AFF'},
      ),
      css('h3').styles(
        margin: Margin.zero,
        fontSize: 1.25.rem,
      ),
      css('.description').styles(
        margin: Margin.symmetric(vertical: 16.px),
        color: Color('#475569'),
        lineHeight: 1.6.em,
      ),
    ]),

    css('.text-link').styles(
      margin: Margin.all(Unit.auto),
      color: Color('#007AFF'),
      fontWeight: FontWeight.bold,
      textDecoration: TextDecoration.none,
    ),

    css('.support-banner', [
      css('&').styles(
        padding: Padding.all(40.px),
        margin: Margin.only(top: 60.px),
        radius: BorderRadius.circular(20.px),
        color: Colors.white,
        textAlign: TextAlign.center,
        backgroundColor: Color('#1E293B'),
      ),
      css('.btn-outline').styles(
        display: Display.inlineBlock,
        padding: Padding.symmetric(horizontal: 24.px, vertical: 12.px),
        margin: Margin.only(top: 20.px),
        radius: BorderRadius.circular(8.px),
        transition: Transition('all', duration: Duration(milliseconds: 200)),
        color: Colors.white,
        textDecoration: TextDecoration.none,
        raw: {'border': '1px solid rgba(255,255,255,0.3)'},
      ),
      css('.btn-outline:hover').styles(
        backgroundColor: Color('rgba(255,255,255,0.1)'),
      ),
    ]),
  ];
}
