import 'package:flutter/material.dart';
import 'package:lolprosapp/providers/lol_match_provider.dart';

class GamerScreen extends StatelessWidget {
  GamerScreen({Key? key, required this.gamerName}) : super(key: key);

  final String gamerName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text('Test Button'),
            onPressed: () {
              lolGamer(gamerName);
              // FutureBuilder<String>(
              //   future: ,
              //   builder: (context, snapshot) {
              //     if (snapshot.hasData) {
              //       return Text(snapshot.data!);
              //     } else if (snapshot.hasError) {
              //       return Text('${snapshot.error}');
              //     }
              //
              //     // By default, show a loading spinner.
              //     return const CircularProgressIndicator();
              //   },
              // );
            },
          ),
        ),
      ),
    );
  }
}
