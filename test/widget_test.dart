import 'package:design/component/HelperText.dart';
import 'package:design/component/botao.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'main_app.dart';

void main() {
  testWidgets(
      'When the Helper has a title, it should render a Helper component',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: TestAppWidget(
            body: TestButton(
          key: Key("label"),
        )),
      ),
    );

    expect(find.text("label"), findsOneWidget);
  });
}
