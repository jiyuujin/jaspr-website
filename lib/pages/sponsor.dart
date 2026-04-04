import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Sponsor extends StatelessComponent {
  const Sponsor({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'sponsor', [
      div(classes: 'container', [
        h2([Component.text('Sponsors')]),
        p(classes: 'section-subtitle', [Component.text('本イベントを支えてくださっている企業・コミュニティの皆様です。')]),

        h3(classes: 'tier-title platinum', [Component.text('Platinum Sponsors')]),
        div(classes: 'sponsor-flex platinum-tier', [
          _sponsorLogo('Google Cloud', 'https://upload.wikimedia.org/wikipedia/commons/5/51/Google_Cloud_logo.svg', true),
          _sponsorLogo('GitHub', 'https://upload.wikimedia.org/wikipedia/commons/9/91/Octicons-mark-github.svg', true),
        ]),

        h3(classes: 'tier-title gold', [Component.text('Gold Sponsors')]),
        div(classes: 'sponsor-flex gold-tier', [
          _sponsorLogo('Flutter', 'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7459443574c3d2.png', false),
          _sponsorLogo('Firebase', 'https://firebase.google.com/downloads/brand-guidelines/SVG/logo-standard.svg', false),
          _sponsorLogo('Dart', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png', false),
        ]),
        
        div(classes: 'sponsor-cta', [
          p([Component.text('スポンサー募集中！あなたの企業もテックコミュニティを応援しませんか？')]),
          a(href: 'mailto:sponsor@example.com', classes: 'btn-link', [Component.text('スポンサー資料を請求する →')]),
        ]),
      ]),
    ]);
  }

  Component _sponsorLogo(String name, String imgUrl, bool isLarge) {
    return div(classes: 'sponsor-card ${isLarge ? 'large' : 'medium'}', [
      img(src: imgUrl, alt: name),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('#sponsors').styles(
      padding: Padding.symmetric(vertical: 80.px),
      backgroundColor: Colors.white,
    ),

    css('.tier-title').styles(
      position: Position.relative(),
      margin: Margin.only(top: 60.px, bottom: 30.px),
      textAlign: TextAlign.center,
      fontSize: 1.5.rem,
      fontWeight: FontWeight.bold,
    ),

    css('.tier-title.platinum').styles(color: Color('#0F172A')),
    css('.tier-title.gold').styles(color: Color('#B45309')),

    css('.sponsor-flex').styles(
      display: Display.flex,
      justifyContent: JustifyContent.center,
      alignItems: AlignItems.center,
      gap: Gap.all(40.px),
      raw: {'flex-wrap': 'wrap'},
    ),

    css('.sponsor-card', [
      css('&').styles(
        display: Display.flex,
        padding: Padding.all(20.px),
        radius: BorderRadius.circular(12.px),
        transition: Transition('all', duration: Duration(milliseconds: 200)),
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
        backgroundColor: Color('#F8FAFC'),
        raw: {'border': '1px solid #E2E8F0'},
      ),
      css('&:hover').styles(
        shadow: BoxShadow(blur: 15.px, color: Color('rgba(0,0,0,0.1)'), offsetX: 0.px, offsetY: 5.px),
        transform: Transform.scale(1.05),
        backgroundColor: Colors.white,
      ),
      css('&.large').styles(width: 280.px, height: 140.px),
      css('&.medium').styles(width: 200.px, height: 100.px),
      css('img').styles(
        maxWidth: 80.percent,
        maxHeight: 60.percent,
        transition: Transition('all', duration: Duration(milliseconds: 200)),
        raw: {'object-fit': 'contain', 'filter': 'grayscale(100%) opacity(0.7)'},
      ),
      css('&:hover img').styles(
        raw: {'filter': 'grayscale(0%) opacity(1)'},
      ),
    ]),

    css('.sponsor-cta').styles(
      padding: Padding.all(30.px),
      margin: Margin.only(top: 80.px),
      radius: BorderRadius.circular(16.px),
      textAlign: TextAlign.center,
      backgroundColor: Color('#F1F5F9'),
    ),

    css('.btn-link').styles(
      color: Color('#007AFF'),
      fontWeight: FontWeight.bold,
      textDecoration: TextDecoration.none,
    ),
  ];
}
