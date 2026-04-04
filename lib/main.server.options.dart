// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:jaspr_website/components/header.dart' as _header;
import 'package:jaspr_website/pages/about.dart' as _about;
import 'package:jaspr_website/pages/home.dart' as _home;
import 'package:jaspr_website/pages/speaker.dart' as _speaker;
import 'package:jaspr_website/pages/sponsor.dart' as _sponsor;
import 'package:jaspr_website/pages/venue.dart' as _venue;
import 'package:jaspr_website/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {
    _about.About: ClientTarget<_about.About>('about'),
    _home.Home: ClientTarget<_home.Home>('home'),
  },
  styles: () => [
    ..._header.Header.styles,
    ..._about.About.styles,
    ..._home.HomeState.styles,
    ..._speaker.Speaker.styles,
    ..._sponsor.Sponsor.styles,
    ..._venue.Venue.styles,
    ..._app.App.styles,
  ],
);
