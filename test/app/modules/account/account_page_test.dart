import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:invest_school/app/modules/account/account_page.dart';

main() {
  testWidgets('AccountPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(AccountPage(title: 'Account')));
    final titleFinder = find.text('Account');
    expect(titleFinder, findsOneWidget);
  });
}
