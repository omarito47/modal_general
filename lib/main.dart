import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:modal_general/global/widgets/pop_up/modal.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop-up Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Pop-up'),
          onPressed: () {
            modal_pop_up(
                numberButton: 2,
                icon: Icon(Icons.playlist_remove, size: 35),
                context: context,
                header: "Attendez!",
                description: "Êtes-vous sûr de vouloir terminer la journée ?",
                buttonText1: "Annuler",
                function1: () {},
                buttonText2: "Terminer");
          },
        ),
      ),
    );
  }
}
