import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rudo_wealth_test/application/presentation/routes/route_generator.dart';
import 'package:rudo_wealth_test/application/presentation/routes/routes.dart';
import 'package:rudo_wealth_test/application/presentation/theme/app_theme.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/colors.dart';
import 'package:rudo_wealth_test/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RuDo Wealth Test',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.darkTheme(),
      initialRoute: Routes.initial,
      onGenerateRoute: RouteGenerator().onGenerateRoute,
    );
  }
}
