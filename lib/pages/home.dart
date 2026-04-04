import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Component build(BuildContext context) {
    return section(id: 'home', [
      div(classes: 'hero-container', [
        div(classes: 'hero-blob', []),

        div(classes: 'hero-content', [
          span(classes: 'hero-badge', [Component.text('APRIL 2026 • TOKYO')]),

          h1(classes: 'hero-title', [
            Component.text('Connect the '),
            span(classes: 'text-gradient', [Component.text('Future')]),
            Component.text(' with Dart & Jaspr'),
          ]),

          p(classes: 'hero-description', [
            Component.text('次世代の Web 開発を加速させる。最先端の技術が集結する、エンジニアのためのカンファレンス。'),
          ]),

          div(classes: 'hero-actions', [
            a(href: '#register', classes: 'btn-primary', [Component.text('チケットを購入する')]),
            a(href: '#venue', classes: 'btn-secondary', [Component.text('会場の詳細を見る')]),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('#home').styles(
      display: Display.flex,
      position: Position.relative(),
      minHeight: 100.vh,
      overflow: Overflow.hidden,
      justifyContent: JustifyContent.center,
      alignItems: AlignItems.center,
      backgroundColor: Color('#0F172A'),
    ),

    css('.hero-blob').styles(
      position: Position.absolute(top: 20.percent, left: 10.percent),
      zIndex: ZIndex(0),
      width: 400.px,
      height: 400.px,
      radius: BorderRadius.circular(200.px),
      backgroundColor: Color('rgba(0, 122, 255, 0.2)'),
      raw: {'filter': 'blur(100px)'},
    ),

    css('.hero-content').styles(
      position: Position.relative(),
      zIndex: ZIndex(1),
      maxWidth: 800.px,
      padding: Padding.symmetric(horizontal: 20.px),
      textAlign: TextAlign.center,
    ),

    css('.hero-badge').styles(
      display: Display.inlineBlock,
      padding: Padding.symmetric(horizontal: 16.px, vertical: 8.px),
      margin: Margin.only(bottom: 24.px),
      radius: BorderRadius.circular(50.px),
      color: Color('#38BDF8'),
      fontSize: 0.85.rem,
      fontWeight: FontWeight.bold,
      backgroundColor: Color('rgba(255, 255, 255, 0.05)'),
      raw: {'border': '1px solid rgba(56, 189, 248, 0.3)'},
    ),

    css('.hero-title').styles(
      margin: Margin.only(bottom: 24.px),
      color: Colors.white,
      fontSize: 4.5.rem,
      fontWeight: FontWeight.w900,
      lineHeight: 1.1.em,
      raw: {'letter-spacing': '-0.02em'},
    ),

    css('.text-gradient').styles(
      raw: {
        'background': 'linear-gradient(90deg, #38BDF8, #818CF8)',
        '-webkit-background-clip': 'text',
        '-webkit-text-fill-color': 'transparent',
      },
    ),

    css('.hero-description').styles(
      margin: Margin.only(bottom: 40.px),
      color: Color('#94A3B8'),
      fontSize: 1.25.rem,
      lineHeight: 1.6.em,
    ),

    css('.hero-actions', [
      css('&').styles(
        display: Display.flex,
        justifyContent: JustifyContent.center,
        gap: Gap.all(20.px),
      ),
      css('a').styles(
        padding: Padding.symmetric(horizontal: 32.px, vertical: 16.px),
        radius: BorderRadius.circular(12.px),
        transition: Transition('all', duration: Duration(milliseconds: 200)),
        fontWeight: FontWeight.bold,
        textDecoration: TextDecoration.none,
      ),
    ]),

    css('.btn-primary').styles(
      shadow: BoxShadow(
        blur: 20.px,
        color: Color('rgba(0, 122, 255, 0.3)'),
        offsetX: 0.px,
        offsetY: 8.px,
      ),
      color: Colors.white,
      backgroundColor: Color('#007AFF'),
    ),
    css('.btn-primary:hover').styles(
      transform: Transform.translate(y: (-2).px),
      backgroundColor: Color('#2563EB'),
    ),

    css('.btn-secondary').styles(
      color: Colors.white,
      backgroundColor: Color('transparent'),
      raw: {'border': '1px solid rgba(255,255,255,0.2)'},
    ),
    css('.btn-secondary:hover').styles(
      backgroundColor: Color('rgba(255,255,255,0.05)'),
    ),
  ];
}
