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
            label: "Desativado",
            cor: Colors.pink,
            disableCor: Color.fromARGB(255, 85, 16, 39),
            click: true,
          ),
        ),
      ),
    );
  });

  expect(find.text("label"), findsOneWidget);
}
