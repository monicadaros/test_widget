import 'package:design/component/botao.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'main_app.dart';

disable() {}

void main() {
  testWidgets('When button click THEN return values',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: TestAppWidget(
          body: TestButton(
            label: "Ativado",
            cor: Colors.pink,
            disableCor: Color.fromARGB(255, 85, 16, 39),
            click: true,
            disable: disable,
          ),
        ),
      ),
    );

    expect(find.byType(TestButton), findsOneWidget);
    await tester.tap(find.text("Ativado"));
    expect(find.text("Ativado"), findsOneWidget);
  });
}
