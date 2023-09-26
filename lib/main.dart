import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

import 'khalti_payment_page.dart';

void main() {
  runApp(const KhaltiPaymentApp());
}

class KhaltiPaymentApp extends StatelessWidget {
  const KhaltiPaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
        publicKey: "test_public_key_dc72c1b8777945a692dc2cdb08175a56",
        enabledDebugging: true,
        builder: (context, navKey) {
          return MaterialApp(
            title: 'Khalti Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const KhaltiPaymentPage(),
            navigatorKey: navKey,
            localizationsDelegates: const [
              KhaltiLocalizations.delegate,
            ],
          );
        });
  }
}
