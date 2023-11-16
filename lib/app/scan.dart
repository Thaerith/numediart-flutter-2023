import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MobileScanner(
        // fit: BoxFit.contain,
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          for (final barcode in barcodes) {
            debugPrint('Barcode found! ${barcode.rawValue}');
            ScaffoldMessenger.of(context).showSnackBar(buildSnackBar(context, barcode.rawValue ?? "null"));
          }
        },
      ),
    );
  }
}

SnackBar buildSnackBar(BuildContext context, String code) {
  return SnackBar(
    content: Text('Code detected: $code'),
    action: SnackBarAction(
      label: 'Cool!',
      onPressed: () {},
    ),
  );
}
