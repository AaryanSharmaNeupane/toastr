import 'package:flutter/material.dart';
import 'package:toastr/toastr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 106, 255),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toastr Example"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Toastr.show(
          context: context,
          message: "Welcome To Toastr !",
          type: ToastType.warning,
          showIcon: true,
          toastStyle: ToastStyle.minimal,
          // alignment: Alignment.bottomLeft,
          showCloseButton: true,
          closeDuration: const Duration(seconds: 10),
          messageStyle: TextStyle(
            fontWeight: FontWeight.bold,
            // fontSize: 30,
            // color: Colors.white,
          ),
          // borderStyle: BorderRadius.circular(30),
          // primaryColor: const Color.fromARGB(255, 15, 226, 226),
        ),
        tooltip: 'show',
        child: const Icon(Icons.add),
      ),
    );
  }
}
