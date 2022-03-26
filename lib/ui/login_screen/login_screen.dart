import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';

import '../../hubs/net_hub.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                try {
                  await NetHub()
                      .register('dawid@niedzwiecki.tech', 'demoTest1');
                } on AppwriteException catch (e) {
                  print(e.message);
                }
              },
              child: const Text('Klik'),
            ),
          ),
        ],
      ),
    );
  }
}
