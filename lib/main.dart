import 'package:flutter/material.dart';
import 'package:prac_noma/widgets/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Hey, Selena',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      'Welcome back',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 18),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 120),
            Text(
              'Total Balance',
              style:
                  TextStyle(fontSize: 22, color: Colors.white.withOpacity(0.8)),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '\$5 194 482',
              style: TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Button(
                    text: 'Transfer',
                    bgColor: Colors.amber,
                    textColor: Colors.black),
                Button(
                    text: 'Request',
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
