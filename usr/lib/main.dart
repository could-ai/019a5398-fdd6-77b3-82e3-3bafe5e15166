import 'package:flutter/material.dart';
import 'screens/role_selection_screen.dart';
import 'screens/driver_list_screen.dart';
import 'screens/loader_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Driver Loader Connector',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const RoleSelectionScreen(),
        '/driver': (context) => DriverListScreen(),
        '/loader': (context) => LoaderListScreen(),
      },
    );
  }
}
