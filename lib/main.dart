import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(
    MaterialApp(
      home: UrlButton(),
    )
  );
}
class UrlButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("URL"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: OutlinedButton(
          child: Text("Result"),
          onPressed: () async {
            final url = 'https://gpnashik.ac.in/result.php';
            if(await canLaunch(url)){
              await launch(
                url,
                forceWebView: true,
                enableJavaScript: true,
              );
            }
          },
        ),
      ),
    );
  }
}

