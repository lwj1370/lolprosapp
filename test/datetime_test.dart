import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

void main() {
  test("Datetime Library Test", () {
    DateFormat df = DateFormat.yMd();

    print(df.format(DateTime.now()));
    expect(df.format(DateTime.now()), String);
  });
}