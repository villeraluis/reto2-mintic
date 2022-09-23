import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Carrito de Compras',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}
