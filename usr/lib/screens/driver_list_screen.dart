import 'package:flutter/material.dart';
import '../models/user.dart';

class DriverListScreen extends StatelessWidget {
  DriverListScreen({Key? key}) : super(key: key);

  // Mock list of loader users to simulate matching
  final List<Loader> mockLoaders = [
    Loader(id: '1', name: 'Loader X'),
    Loader(id: '2', name: 'Loader Y'),
    Loader(id: '3', name: 'Loader Z'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Loaders'),
      ),
      body: ListView.builder(
        itemCount: mockLoaders.length,
        itemBuilder: (context, index) {
          final loader = mockLoaders[index];
          return ListTile(
            title: Text(loader.name),
            trailing: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Connected with ${loader.name}')),
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
