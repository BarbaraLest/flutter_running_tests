import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//este arquivo vai testar o contador do botão, ou seja, a idade seguinte da greta

void main() {
  testWidgets('Given user in home page When floating action button is pressed Then birthday is called', (WidgetTester tester) async {
    // ASSEMBLE
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: MyHomePage(),
        ),
      ),
    );

    final button = find.byType(FloatingActionButton);

    // ACT
    await tester.tap(button);
    await tester.pump();

    // ASSERT
  
    //para greta com o age = 24, o proximo esperado é o 25..
    final text = find.text('Greta age 25');
   // final text = find.text('Greta age 26');
    expect(text, findsOneWidget);
  });
}
