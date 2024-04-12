import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:duplicate_harsh/flutter_flow/flutter_flow_icon_button.dart';
import 'package:duplicate_harsh/flutter_flow/flutter_flow_widgets.dart';
import 'package:duplicate_harsh/flutter_flow/flutter_flow_theme.dart';
import 'package:duplicate_harsh/index.dart';
import 'package:duplicate_harsh/main.dart';
import 'package:duplicate_harsh/flutter_flow/flutter_flow_util.dart';

import 'package:duplicate_harsh/backend/supabase/supabase.dart';
import 'package:duplicate_harsh/auth/supabase_auth/auth_util.dart';

import 'package:duplicate_harsh/backend/supabase/supabase.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    _overrideOnError();

    await SupaFlow.initialize();

    await FlutterFlowTheme.initialize();
  });

  setUp(() async {
    await authManager.signOut();
  });

  testWidgets('LoginTest', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    await tester.pumpAndSettle(Duration(milliseconds: 3100));
    await tester.enterText(find.byKey(ValueKey('emailAddress_js2b')),
        '2020.digvijay.kocharekar@ves.ac.in');
    await tester.enterText(find.byKey(ValueKey('password_i3b0')), '12345678');
    await tester.tap(find.byKey(ValueKey('Button_c5r6')));
    await tester.pumpAndSettle();
    expect(find.text('2020.digvijay.kocharekar@ves.ac.in'), findsWidgets);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
