import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void decrement() {
    print('Decrement');
  }

  void increment() {
    print('Increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Pode entrar!',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w200),
          ),
          const SizedBox(height: 25),
          const Text(
            '0',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w200),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: decrement,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      //padding: const EdgeInsets.all(32)),
                      fixedSize: const Size(100, 100),
                      // ignore: deprecated_member_use
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        //side: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(25),
                      )),
                  child: const Text(
                    'Saiu',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )),
              const SizedBox(width: 25),
              TextButton(
                  onPressed: increment,
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black, //mesma função do primary
                      backgroundColor: Colors.white,
                      //padding: const EdgeInsets.all(32)),
                      fixedSize: const Size(100, 100),
                      shape: RoundedRectangleBorder(
                        //side: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(25),
                      )),
                  child: const Text(
                    'Entrou',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
