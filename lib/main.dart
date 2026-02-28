import 'package:flutter/material.dart';

import 'package:fintech_app/features/customers/customers.dart';

void main() {
  runApp(const FintechApp());
}

class FintechApp extends StatelessWidget {
  const FintechApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Nebula',
      debugShowCheckedModeBanner: false,
      // theme: AppTheme.light,
      // darkTheme: AppTheme.dark,
      // themeMode: ref.watch(themeProvider),

      home: CustomersCreate(),


      //TODO: configurar navegación
      // routerConfig: appRouter,

      //TODO: crear internacionalización 
      // locale: const Locale('en'), // cambiar dinámicamente más adelante
      // supportedLocales: const [
      //   Locale('en'),
      //   Locale('es'),
      // ],
      // localizationsDelegates: const [
      //   AppLocalizations.delegate, // archivo futuro personalizado
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
    );
  }
}
