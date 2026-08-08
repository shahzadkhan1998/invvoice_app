import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('bundled fonts parse and support Arabic and CJK runes', () async {
    final arabicData = await rootBundle.load('assets/fonts/NotoSansArabic.ttf');
    final cjkData = await rootBundle.load('assets/fonts/NotoSansSC.ttf');

    final arabicFont = TtfParser(arabicData);
    final cjkFont = TtfParser(cjkData);

    const arabicRunes = '\u0641\u0627\u062a\u0648\u0631'; // فاتور
    const cjkRunes = '发票中文';

    for (final rune in arabicRunes.runes) {
      expect(arabicFont.charToGlyphIndexMap.containsKey(rune), isTrue,
          reason:
              'Arabic rune U+${rune.toRadixString(16)} should be supported');
    }
    for (final rune in cjkRunes.runes) {
      expect(cjkFont.charToGlyphIndexMap.containsKey(rune), isTrue,
          reason: 'CJK rune U+${rune.toRadixString(16)} should be supported');
    }
  });

  test('PDF renders Arabic and Chinese without missing-font warnings',
      () async {
    final base = pw.Font.ttf(await rootBundle.load('assets/fonts/NotoSans-Regular.ttf'));
    final bold = pw.Font.ttf(await rootBundle.load('assets/fonts/NotoSans-Bold.ttf'));
    final italic = pw.Font.ttf(await rootBundle.load('assets/fonts/NotoSans-Italic.ttf'));
    final boldItalic = pw.Font.ttf(await rootBundle.load('assets/fonts/NotoSans-BoldItalic.ttf'));
    final arabic = pw.Font.ttf(await rootBundle.load('assets/fonts/NotoSansArabic.ttf'));
    final cjk = pw.Font.ttf(await rootBundle.load('assets/fonts/NotoSansSC.ttf'));

    final doc = pw.Document(
      theme: pw.ThemeData.withFont(
        base: base,
        bold: bold,
        italic: italic,
        boldItalic: boldItalic,
        fontFallback: [arabic, cjk],
      ),
    );

    doc.addPage(
      pw.Page(
        build: (_) => pw.Column(
          children: [
            pw.Text('فاتورة', style: const pw.TextStyle(fontSize: 20)),
            pw.Text('فواتيري', style: const pw.TextStyle(fontSize: 20)),
            pw.Text('发票中文', style: const pw.TextStyle(fontSize: 20)),
            pw.Text('Invoice',
                style: const pw.TextStyle(
                    fontSize: 20, fontWeight: pw.FontWeight.bold)),
            pw.Text('Merci — Hasta luego',
                style: const pw.TextStyle(
                    fontSize: 20, fontStyle: pw.FontStyle.italic)),
          ],
        ),
      ),
    );

    final logs = <String>[];
    final bytes = await runZoned(
      () => doc.save(),
      zoneSpecification: ZoneSpecification(
        print: (self, parent, zone, line) => logs.add(line),
      ),
    );

    expect(bytes, isNotEmpty);
    expect(logs.where((l) => l.contains('Unable to find a font')), isEmpty,
        reason: 'All glyphs should be drawn by base or fallback fonts');
    expect(logs.where((l) => l.contains('has no Unicode support')), isEmpty,
        reason: 'No Type1 (Helvetica) fonts should be registered');
  });
}
