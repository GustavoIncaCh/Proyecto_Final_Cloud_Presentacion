import 'package:flutter/material.dart';
import 'package:cloud_final/modulo_alertas/moduloAlertas.dart';
import 'package:cloud_final/modulo_reportes/moduloReportes.dart';
import 'package:cloud_final/modulo_usuarios/moduloUsuarios.dart';
import 'package:cloud_final/modulo_alertas/core/routes/router.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: Alertas(),
      //home: Reportes(),
      routes: Routes.routes,
      //home: UserInformation(),
    );
  }
}
