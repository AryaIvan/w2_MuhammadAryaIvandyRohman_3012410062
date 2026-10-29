import 'package:flutter_test/flutter_test.dart';
import 'package:w2_ipan/counter.dart';
import 'package:w2_ipan/main.dart';

void main() {
  testWidgets('Main page loads and displays KartuMahasiswa and Profil', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Muhammad Arya Ivandy Rohman'), findsAtLeast(1));
    expect(find.text('Muhammad Faidza Airlangga'), findsOneWidget);
  });

  testWidgets('Counter App loads and increments', (WidgetTester tester) async {
    await tester.pumpWidget(const CounterApp());
    expect(find.text('0'), findsOneWidget);
    await tester.tap(find.text('Tambah'));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });
}
