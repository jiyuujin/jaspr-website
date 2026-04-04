import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

@client
class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'about', [
      div(classes: 'container', [
        h2([Component.text('About & Community')]),
        p(classes: 'section-subtitle', [Component.text('Jaspr Conference は、日本における Dart/Jaspr の普及を支援しています。')]),

        div(classes: 'about-grid', [
          div(classes: 'about-card highlight', [
            h3([Component.text('🏛️ Organizer')]),
            p([Component.text('Jaspr Conference')]),
            p(classes: 'description', [
              Component.text('私たちは、Dart によるフルスタック Web 開発の可能性を広めるために活動している有志団体です。'),
            ]),
          ]),

          _aboutItem(
            '📖 Documentation', 
            '公式ドキュメントで Jaspr の基礎から応用までを学べます。',
            'https://docs.jaspr.site'
          ),

          _aboutItem(
            '💬 Community', 
            '困ったときは Discord サーバーへ。日本の開発者も参加しています。',
            'https://discord.gg/XGXrGEk4c6'
          ),

          _aboutItem(
            '📦 Ecosystem', 
            'Router や Riverpod など、Jaspr 専用パッケージが続々と登場中。',
            'https://pub.dev/packages?q=topic%3Ajaspr'
          ),
        ]),

        div(classes: 'support-banner', [
          p([Component.text('Jaspr を気に入ったら、ぜひ GitHub でスターを付けて応援してください！ ⭐️')]),
          a(href: 'https://github.com/schultek/jaspr', target: Target.blank, classes: 'btn-outline', [
            Component.text('GitHub を見る'),
          ]),
        ]),
      ]),
    ]);
  }

  Component _aboutItem(String title, String desc, String url) {
    return div(classes: 'about-card', [
      h3([Component.text(title)]),
      p(classes: 'description', [Component.text(desc)]),
      a(href: url, target: Target.blank, classes: 'text-link', [Component.text('詳しく見る →')]),
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
