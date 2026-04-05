// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:website_2026/components/header.dart' as _header;
import 'package:website_2026/pages/about.dart' as _about;
import 'package:website_2026/pages/home.dart' as _home;
import 'package:website_2026/pages/speaker.dart' as _speaker;
import 'package:website_2026/pages/sponsor.dart' as _sponsor;
import 'package:website_2026/pages/venue.dart' as _venue;
import 'package:website_2026/app.dart' as _app;

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
  clients: {_header.Header: ClientTarget<_header.Header>('header')},
  styles: () => [
    ..._header.HeaderState.styles,
    ..._about.About.styles,
    ..._home.Home.styles,
    ..._speaker.Speaker.styles,
    ..._sponsor.Sponsor.styles,
    ..._venue.Venue.styles,
    ..._app.AppShell.styles,
  ],
);
