import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Speaker extends StatelessComponent {
  const Speaker({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'speaker', [
      div(classes: 'container', [
        h2([Component.text('Featured Speakers')]),
        p(classes: 'section-subtitle', [Component.text('世界中から集まったエキスパートたちが、最新の技術を共有します。')]),
        div(classes: 'speaker-grid', [
          _speaker('山田 太郎', 'Google GDE / Flutter Specialist', 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=400&fit=crop'),
          _speaker('佐藤 花子', 'Dart Expert & Web Developer', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=400&h=400&fit=crop'),
          _speaker('鈴木 一郎', 'Senior Infrastructure Engineer', 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=400&h=400&fit=crop'),
          _speaker('田中 美咲', 'UI/UX Designer', 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=400&h=400&fit=crop'),
        ]),
      ]),
    ]);
  }

  Component _speaker(String name, String title, String imgUrl) {
    return div(classes: 'speaker-card', [
      div(classes: 'speaker-image-wrapper', [
        img(src: imgUrl, alt: name),
        div(classes: 'speaker-overlay', [
          span(classes: 'social-icon', [Component.text('𝕏')]),
          span(classes: 'social-icon', [Component.text('🔗')]),
        ]),
      ]),
      div(classes: 'speaker-info', [
        h3([Component.text(name)]),
        p([Component.text(title)]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('#speaker').styles(
      backgroundColor: Color('#F8FAFC'),
    ),

    css('.section-subtitle').styles(
      margin: Margin.only(bottom: 60.px),
      color: Color('#64748B'),
      textAlign: TextAlign.center,
      fontSize: 1.1.rem,
    ),

    css('.speaker-grid').styles(
      display: Display.grid,
      // gridTemplate: GridTemplate(
      //   columns: GridTracks([
      //     GridTrack.repeat(
      //       Repeat.autoFill(),
      //       [GridTrack.minmax(min: 250.px, max: 1.fr)]
      //     )
      //   ]),
      // ),
      gap: Gap.all(32.px),
      raw: {
        'grid-template-columns': 'repeat(auto-fill, minmax(280px, 1fr))',
      },
    ),

    css('.speaker-card', [
      css('&').styles(
        radius: BorderRadius.circular(20.px),
        overflow: Overflow.hidden,
        shadow: BoxShadow(
          blur: 20.px,
          color: Color('rgba(0,0,0,0.04)'),
          offsetX: 0.px,
          offsetY: 4.px,
        ),
        transition: Transition('transform', duration: Duration(milliseconds: 300)),
        backgroundColor: Colors.white,
      ),
      css('&:hover').styles(
        transform: Transform.translate(y: (-10).px),
      ),
    ]),

    css('.speaker-image-wrapper', [
      css('&').styles(
        position: Position.relative(),
        aspectRatio: AspectRatio(1, 1),
        overflow: Overflow.hidden,
      ),
      css('img').styles(
        width: 100.percent,
        height: 100.percent,
        transition: Transition('transform', duration: Duration(milliseconds: 500)),
        raw: {'object-fit': 'cover'},
      ),
      css('.speaker-card:hover img').styles(
        transform: Transform.scale(1.1),
      ),
    ]),

    css('.speaker-overlay').styles(
      display: Display.flex,
      position: Position.absolute(top: 0.px, left: 0.px, right: 0.px, bottom: 0.px),
      opacity: 0,
      transition: Transition('opacity', duration: Duration(milliseconds: 300)),
      justifyContent: JustifyContent.center,
      alignItems: AlignItems.center,
      gap: Gap.all(15.px),
      backgroundColor: Color('rgba(0, 122, 255, 0.6)'),
      raw: {'backdrop-filter': 'blur(4px)'},
    ),
    css('.speaker-card:hover .speaker-overlay').styles(
      opacity: 1,
    ),

    css('.social-icon').styles(
      cursor: Cursor.pointer,
      color: Colors.white,
      fontSize: 1.2.rem,
    ),

    css('.speaker-info').styles(
      padding: Padding.all(24.px),
      textAlign: TextAlign.center,
    ),
    css('.speaker-info h3').styles(
      margin: Margin.zero,
      color: Color('#1E293B'),
      fontSize: 1.25.rem,
      fontWeight: FontWeight.w700,
    ),
    css('.speaker-info p').styles(
      margin: Margin.only(top: 8.px),
      color: Color('#64748B'),
      fontSize: 0.9.rem,
      fontWeight: FontWeight.w500,
    ),
  ];
}
