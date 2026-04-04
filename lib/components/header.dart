import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return header([
      div(classes: 'header-logo', [
        a(href: '#home', [Component.text('CONF 2026')]),
      ]),
      nav([
        _navItem('#home', 'Top'),
        _navItem('#speaker', 'Speakers'),
        _navItem('#venue', 'Venue'),
        _navItem('#sponsor', 'Sponsors'),
        a(href: '#register', classes: 'nav-btn', [Component.text('Register')]),
      ]),
    ]);
  }

  Component _navItem(String href, String label) {
    return div(classes: 'nav-link-wrapper', [
      a(href: href, [Component.text(label)]),
      div(classes: 'underline', []),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('header', [
      css('&').styles(
        display: Display.flex,
        position: Position.fixed(top: 0.px, left: 0.px, right: 0.px),
        zIndex: ZIndex(1000),
        padding: Padding.symmetric(horizontal: 40.px, vertical: 15.px),
        shadow: BoxShadow(
          blur: 20.px,
          color: Color('rgba(0,0,0,0.05)'),
          offsetX: 0.px,
          offsetY: 4.px,
        ),
        justifyContent: JustifyContent.spaceBetween,
        alignItems: AlignItems.center,
        backgroundColor: Color('rgba(255, 255, 255, 0.85)'),
        raw: {
          'backdrop-filter': 'blur(12px)', 
          '-webkit-backdrop-filter': 'blur(12px)'
        },
      ),

      css('.header-logo a').styles(
        color: Color('#111827'),
        fontSize: 1.5.rem,
        fontWeight: FontWeight.w800,
        textDecoration: TextDecoration.none,
      ),

      css('nav', [
        css('&').styles(
          display: Display.flex,
          alignItems: AlignItems.center,
          gap: Gap.all(8.px),
        ),
        css('.nav-link-wrapper', [
          css('&').styles(position: Position.relative()),
          css('a').styles(
            padding: Padding.symmetric(horizontal: 16.px, vertical: 8.px),
            transition: Transition('color', duration: Duration(milliseconds: 200)),
            color: Color('#4B5563'),
            fontWeight: FontWeight.w600,
            textDecoration: TextDecoration.none,
          ),
          css('&:hover a').styles(color: Color('#007AFF')),
          css('.underline').styles(
            position: Position.absolute(bottom: 0.px, left: 16.px, right: 16.px),
            height: 2.px,
            transition: Transition('transform', duration: Duration(milliseconds: 300)),
            transform: Transform.scale(0),
            backgroundColor: Color('#007AFF'),
          ),
          css('&:hover .underline').styles(transform: Transform.scale(1)),
        ]),
        css('.nav-btn').styles(
          padding: Padding.symmetric(horizontal: 24.px, vertical: 12.px),
          margin: Margin.only(left: 16.px),
          radius: BorderRadius.circular(50.px),
          shadow: BoxShadow(
            blur: 10.px,
            color: Color('rgba(0,0,0,0.1)'),
            offsetX: 0.px,
            offsetY: 4.px,
          ),
          transition: Transition('all', duration: Duration(milliseconds: 200)),
          color: Colors.white,
          fontWeight: FontWeight.bold,
          textDecoration: TextDecoration.none,
          backgroundColor: Color('#111827'),
        ),
        css('.nav-btn:hover').styles(
          transform: Transform.translate(y: (-2).px),
          backgroundColor: Color('#374151'),
        ),
      ]),
    ]),
  ];
}
