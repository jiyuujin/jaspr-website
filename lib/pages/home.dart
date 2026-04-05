import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:website_2026/generated/l10n.dart';
import 'package:website_2026/styles.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return section(id: 'home', [
      div(classes: 'light-blur', []),

      div(classes: 'assemble-visual', [
        div(classes: 'visual-circle circle-1', []),
        div(classes: 'visual-circle circle-2', []),
        img(src: 'images/flutterkaigi_dash.png', classes: 'char-dash'),
        img(src: 'images/flutterninjas_ninja.png', classes: 'char-ninja'),
      ]),

      div(classes: 'hero-container', [
        div(classes: 'hero-content', [
          span(classes: 'concept-badge', [Component.text('Assemble • ${l10n.date}')]),

          h1(classes: 'hero-main-copy', [
            Component.text(l10n.tagline1),
            br(),
            span(classes: 'text-gradient', [Component.text(l10n.tagline2)]),
          ]),

          p(classes: 'hero-description', [
            Component.text(l10n.message1),
            br(),
            Component.text(l10n.message2),
          ]),

          div(classes: 'hero-actions', [
            a(href: '#register', classes: 'btn-ignite', [
              Component.text(l10n.joinTheExcitement),
              span(classes: 'btn-sub', [Component.text(l10n.salesStartInJuly)])
            ]),
            a(href: '/about', classes: 'btn-secondary', [Component.text(l10n.readThePolicy)]),
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
      backgroundColor: DesignTokens.background,
    ),

    css('.assemble-visual').styles(
      position: Position.absolute(top: 0.px, right: 0.px, bottom: 0.px),
      zIndex: ZIndex(0),
      width: 50.vw,
    ),

    css('.visual-circle').styles(
      position: Position.absolute(),
      radius: BorderRadius.circular(50.percent),
      raw: {'filter': 'blur(60px)'},
    ),

    css('.circle-1').styles(
      position: Position.absolute(top: 10.percent, right: 10.percent), width: 30.vw,
      height: 30.vw,
      backgroundColor: Color('rgba(0, 122, 255, 0.08)'),
    ),

    css('.circle-2').styles(
      position: Position.absolute(bottom: 15.percent, right: 5.percent), width: 30.vw,
      height: 30.vw,
      backgroundColor: Color('rgba(255, 69, 0, 0.06)'),
    ),

    css('.char-dash').styles(
      position: Position.absolute(top: 20.percent, right: 18.percent),
      zIndex: ZIndex(2),
      width: 20.vw,
      raw: {
        'filter': 'drop-shadow(0 20px 40px rgba(0,0,0,0.05))',
        'transform': 'rotate(-5deg)',
      },
    ),

    css('.char-ninja').styles(
      position: Position.absolute(top: 40.percent, right: 12.percent),
      zIndex: ZIndex(1),
      width: 22.vw,
      raw: {
        'filter': 'drop-shadow(0 20px 40px rgba(0,0,0,0.05)) contrast(0.9)',
        'opacity': '0.8',
        'transform': 'rotate(8deg)',
      },
    ),

    css('.light-blur').styles(
      position: Position.absolute(top: (-10).percent, right: (-10).percent),
      width: 60.vw,
      height: 60.vw,
      raw: {
        'background': 'radial-gradient(circle, rgba(0, 122, 255, 0.1) 0%, rgba(255, 69, 0, 0.05) 50%, transparent 80%)',
        'filter': 'blur(120px)',
      },
    ),

    css('.hero-visual-bg').styles(
      position: Position.absolute(top: 0.px, right: 0.px, bottom: 0.px),
      zIndex: ZIndex(0),
      width: 45.vw,
    ),

    css('.char-dash').styles(
      position: Position.absolute(top: 20.percent, right: 24.percent),
      width: 22.vw,
      raw: {
        'filter': 'drop-shadow(0 20px 40px rgba(0,0,0,0.05))',
        'opacity': '0.7',
        'transform': 'rotate(-5deg)',
      },
    ),
    css('.char-ninja').styles(
      position: Position.absolute(bottom: 26.percent, right: 24.percent),
      width: 24.vw,
      raw: {
        'filter': 'drop-shadow(0 20px 40px rgba(0,0,0,0.05))',
        'opacity': '0.6',
        'transform': 'rotate(10deg)',
      },
    ),

    css('.hero-container').styles(
      position: Position.relative(),
      zIndex: ZIndex(1),
      width: 100.percent,
      maxWidth: DesignTokens.containerWidth.px,
      padding: Padding.symmetric(horizontal: 40.px),
    ),

    css('.hero-content').styles(maxWidth: 750.px),

    css('.concept-badge').styles(
      display: Display.block,
      margin: Margin.only(bottom: 24.px),
      color: DesignTokens.primary,
      fontSize: 1.1.rem,
      fontWeight: FontWeight.bold,
      raw: {'letter-spacing': '0.1em'},
    ),

    css('.hero-main-copy').styles(
      margin: Margin.zero,
      color: DesignTokens.text,
      fontSize: 5.5.rem,
      fontWeight: FontWeight.w900,
      lineHeight: 1.1.em,
      raw: {'letter-spacing': '-0.04em'},
    ),

    css('.text-gradient').styles(
      raw: {
        'background': 'linear-gradient(90deg, #FF4500, #FF0080)',
        '-webkit-background-clip': 'text',
        '-webkit-text-fill-color': 'transparent',
      },
    ),

    css('.hero-description').styles(
      margin: Margin.symmetric(vertical: 40.px),
      color: DesignTokens.muted,
      fontSize: 1.3.rem,
      lineHeight: 1.7.em,
    ),

    css('.hero-actions').styles(
      display: Display.flex,
      alignItems: AlignItems.center,
      gap: Gap.all(32.px),
    ),

    css('.btn-ignite').styles(
      padding: Padding.symmetric(horizontal: 40.px, vertical: 20.px),
      radius: BorderRadius.circular(16.px),
      shadow: BoxShadow(blur: 25.px, color: Color('rgba(255, 69, 0, 0.25)'), offsetX: 0.px, offsetY: 8.px),
      transition: Transition('transform', duration: Duration(milliseconds: 200)),
      color: Colors.white,
      textAlign: TextAlign.center,
      fontWeight: FontWeight.bold,
      textDecoration: TextDecoration.none,
      backgroundColor: DesignTokens.accent,
    ),

    css('.btn-secondary').styles(
      transition: Transition('all', duration: Duration(milliseconds: 200)),
      color: DesignTokens.primary,
      fontWeight: FontWeight.bold,
      textDecoration: TextDecoration.none,
      raw: {'border-bottom': '2px solid rgba(0, 122, 255, 0.2)'},
    ),
    css('.btn-secondary:hover').styles(
      raw: {'border-bottom-color': '#007AFF'},
    ),

    css('@media (max-width: 900px)', [
      css('.assemble-visual').styles(
        width: 100.percent,
        opacity: 0.4,
      ),

      css('.char-dash').styles(
        position: Position.absolute(top: 8.percent, right: 8.percent),
        width: 40.vw,
      ),
      css('.char-ninja').styles(
        position: Position.absolute(top: 32.percent, right: (-4).percent),
        width: 45.vw,
      ),

      css('.hero-main-copy').styles(
        textAlign: TextAlign.center,
        fontSize: 3.2.rem,
      ),

      css('.hero-content').styles(
        margin: Margin.only(top: 150.px),
        textAlign: TextAlign.center,
      ),

      css('.hero-actions').styles(
        flexDirection: FlexDirection.column,
        gap: Gap.all(16.px),
      ),

      css('.hero-visual-bg').styles(display: Display.none),
    ]),
  ];
}
