import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
    print(count);
  }

  void increment() {
    setState(() {
      count++;
    });
    print(count);
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/fundo.jpg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isFull ? 'Lotado' : 'Pode entrar!',
                style: TextStyle(
                    fontSize: 30,
                    color: isFull ? Colors.red : Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 25),
              Text(
                '$count',
                style: TextStyle(
                    fontSize: 60,
                    color: isFull ? Colors.red : Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: isEmpty ? null : decrement,
                      style: TextButton.styleFrom(
                          backgroundColor:
                              isEmpty ? Colors.white30 : Colors.white,
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
                      onPressed: isFull ? null : increment,
                      style: TextButton.styleFrom(
                          foregroundColor:
                              Colors.black, //mesma função do primary
                          backgroundColor:
                              isFull ? Colors.white30 : Colors.white,
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
        ));
  }
}
