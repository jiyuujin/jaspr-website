import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:website_2026/generated/l10n.dart';

class Venue extends StatelessComponent {
  const Venue({super.key});

  @override
  Component build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return section(id: 'venue', [
      div(classes: 'container', [
        h2([Component.text(l10n.venue)]),
        
        div(classes: 'venue-grid', [
          div(classes: 'venue-map', [
            RawText('''
              <iframe 
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3241.838689334204!2d139.7530694757867!3d35.65634577259518!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188b30efb679bd%3A0xecfd0339e177450c!2z5rWc5p2-55S644Kz44Oz44OZ44Oz44K344On44Oz44Ob44O844Or!5e0!3m2!1sja!2sjp!4v1775286449655!5m2!1sja!2sjp"
                width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
              </iframe>
            '''),
          ]),

          div(classes: 'venue-info', [
            h3([Component.text(l10n.venueName)]),
            p(classes: 'address', [Component.text(l10n.venueAddress)]),
            
            div(classes: 'access-methods', [
              div(classes: 'access-item', [
                span(classes: 'icon', [Component.text('🚆')]),
                p([Component.text(l10n.accessByTrain)]),
              ]),
              div(classes: 'access-item', [
                span(classes: 'icon', [Component.text('🚇')]),
                p([Component.text(l10n.accessBySubway)]),
              ]),
            ]),
            
            a(
              href: 'https://maps.app.goo.gl/xxxx', 
              target: Target.blank, 
              classes: 'map-link', 
              [Component.text(l10n.openInGoogleMaps)]
            ),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('#venue').styles(
      backgroundColor: Color('#FFFFFF'),
    ),

    css('.venue-grid', [
      css('&').styles(
        display: Display.grid,
        // gridTemplate: GridTemplate(
        //   columns: GridTracks([
        //     GridTrack.repeat(
        //       Repeat.autoFill(), // AutoFill() -> Repeat.autoFill()
        //       [GridTrack.minmax(min: 350.px, max: 1.fr)] // minmax -> GridTrack.minmax
        //     )
        //   ]),
        // ),
        margin: Margin.only(top: 40.px),
        radius: BorderRadius.circular(24.px), 
        overflow: Overflow.hidden,
        shadow: BoxShadow(
          blur: 20.px,
          color: Color('rgba(0,0,0,0.05)'),
          offsetX: 0.px,
          offsetY: 4.px,
        ),
        gap: Gap.all(40.px),
        raw: {
          'grid-template-columns': 'repeat(auto-fill, minmax(350px, 1fr))',
        },
      ),
    ]),

    css('.venue-map').styles(
      minHeight: 400.px,
      backgroundColor: Color('#E5E7EB'),
    ),

    css('.venue-info').styles(
      display: Display.flex,
      padding: Padding.all(40.px),
      flexDirection: FlexDirection.column,
      justifyContent: JustifyContent.center,
      backgroundColor: Color('#F9FAFB'),
    ),
    css('.venue-info h3').styles(
      margin: Margin.only(bottom: 10.px),
      fontSize: 1.8.rem,
    ),

    css('.address').styles(
      margin: Margin.only(bottom: 30.px),
      color: Color('#6B7280'),
    ),

    css('.access-item', [
      css('&').styles(
        display: Display.flex,
        margin: Margin.only(bottom: 16.px),
        alignItems: AlignItems.start,
        gap: Gap.all(12.px),
      ),
      css('.icon').styles(fontSize: 1.2.rem),
      css('p').styles(margin: Margin.zero, lineHeight: 1.5.em),
    ]),

    css('.map-link').styles(
      margin: Margin.only(top: 20.px),
      color: Color('#007AFF'),
      fontWeight: FontWeight.bold,
      textDecoration: TextDecoration.none,
    ),
  ];
}
