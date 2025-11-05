import 'package:flutter/material.dart';
import '../models/user.dart';

class LoaderListScreen extends StatelessWidget {
  LoaderListScreen({Key? key}) : super(key: key);

  // Mock list of driver users to simulate matching
  final List<Driver> mockDrivers = [
    Driver(id: '1', name: 'Driver A'),
    Driver(id: '2', name: 'Driver B'),
    Driver(id: '3', name: 'Driver C'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Drivers'),
      ),
      body: ListView.builder(
        itemCount: mockDrivers.length,
        itemBuilder: (context, index) {
          final driver = mockDrivers[index];
          return ListTile(
            title: Text(driver.name),
            trailing: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Connected with ${driver.name}')),
                );
              },
              child: const Text('Connect'),
            ),
          );
        },
      ),
    );
  }
}
