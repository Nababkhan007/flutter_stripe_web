import 'package:flutter/material.dart';
import 'package:webview_all/webview_all.dart';

void main() {
  runApp(const StripeWeb());
}

class StripeWeb extends StatelessWidget {
  const StripeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Stripe Payment"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Stripe Integration",
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => const AlertDialog(
                    title: Text("Stripe Payment"),
                    content: Webview(url: "http://127.0.0.1:64114/stripe/stripe_webview.html"),
                  ),
                );
              },
              child: const Text("Go to Payment"),
            ),
          ],
        ),
      ),
    );
  }
}
