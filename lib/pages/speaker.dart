import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:website_2026/generated/l10n.dart';

class Speaker extends StatelessComponent {
  const Speaker({super.key});

  @override
  Component build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return section(id: 'speaker', [
      div(classes: 'container', [
        h2([Component.text(l10n.speaker)]),
        // p(classes: 'section-subtitle', [Component.text(l10n.speakerSubtitle)]),

        // div(classes: 'speaker-grid', [
        //   _speaker('山田 太郎', 'Google GDE / Flutter Specialist', 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=400&fit=crop'),
        //   _speaker('佐藤 花子', 'Dart Expert & Web Developer', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=400&h=400&fit=crop'),
        //   _speaker('鈴木 一郎', 'Senior Infrastructure Engineer', 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=400&h=400&fit=crop'),
        //   _speaker('田中 美咲', 'UI/UX Designer', 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=400&h=400&fit=crop'),
        // ]),

        div(classes: 'cfs-placeholder', [
          div(classes: 'cfs-content', [
            span(classes: 'cfs-badge', [Component.text(l10n.comingSoon)]),
            h3([Component.text(l10n.callForSessions)]),
            p([
              Component.text(l10n.speakerRecruitmentStart),
              br(),
              strong([Component.text(l10n.speakerRecruitmentDate)]),
              Component.text(l10n.speakerRecruitmentEnd),
            ]),
            div(classes: 'cfs-hint', [
              Component.text(l10n.speakerRecruitmentHint)
            ]),
          ]),
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

    css('.cfs-placeholder').styles(
      maxWidth: 600.px,
      padding: Padding.all(60.px),
      margin: Margin.symmetric(horizontal: Unit.auto),
      radius: BorderRadius.circular(32.px),
      shadow: BoxShadow(
        blur: 40.px,
        color: Color('rgba(0, 122, 255, 0.06)'),
        offsetX: 0.px,
        offsetY: 10.px,
      ),
      textAlign: TextAlign.center,
      backgroundColor: Colors.white,
      raw: {
        'border': '2px dashed rgba(0, 122, 255, 0.2)',
        'background-image': 'radial-gradient(circle at 10% 20%, rgba(0, 122, 255, 0.02) 0%, transparent 100%)',
      },
    ),

    css('.cfs-badge').styles(
      display: Display.inlineBlock,
      padding: Padding.symmetric(horizontal: 16.px, vertical: 6.px),
      margin: Margin.only(bottom: 24.px),
      radius: BorderRadius.circular(100.px),
      color: Color('#007AFF'),
      fontSize: 0.85.rem,
      fontWeight: FontWeight.bold,
      backgroundColor: Color('rgba(0, 122, 255, 0.1)'),
    ),

    css('.cfs-content h3').styles(
      margin: Margin.only(bottom: 16.px),
      color: Color('#1E293B'),
      fontSize: 2.rem,
    ),
    css('.cfs-content p').styles(
      margin: Margin.only(bottom: 32.px),
      color: Color('#475569'),
      fontSize: 1.2.rem,
      lineHeight: 1.8.em,
    ),
    css('.cfs-content strong').styles(
      color: Color('#007AFF'),
      fontSize: 1.4.rem,
    ),

    css('.cfs-hint').styles(
      color: Color('#94A3B8'),
      fontSize: 0.9.rem,
      raw: {'font-style': 'italic'},
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

    css.media(MediaQuery.screen(maxWidth: 900.px), [
      css('.cfs-placeholder').styles(
        padding: Padding.symmetric(horizontal: 30.px, vertical: 40.px),
        margin: Margin.symmetric(horizontal: 10.px),
      ),

      css('.cfs-content h3').styles(fontSize: 1.5.rem),
      css('.cfs-content p').styles(fontSize: 1.rem),
    ]),
  ];
}
