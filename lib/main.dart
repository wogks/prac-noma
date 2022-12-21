import 'package:flutter/material.dart';
import 'package:prac_noma/widgets/button.dart';
import 'package:prac_noma/widgets/currency.dart';

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
      body: SingleChildScrollView(
        child: Padding(
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
              const SizedBox(height: 70),
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
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CurrencyCard(
                name: 'Euro',
                code: 'EUR',
                amount: '3 123',
                icon: Icons.euro_rounded,
                isInvert: false,
              ),
              Transform.translate(
                offset: const Offset(0, -20),
                child: const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '4 231',
                  icon: Icons.currency_bitcoin,
                  isInvert: true,
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -40),
                child: const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '4 231',
                  icon: Icons.currency_bitcoin,
                  isInvert: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
