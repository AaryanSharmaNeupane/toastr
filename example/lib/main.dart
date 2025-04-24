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
          seedColor: const Color.fromARGB(255, 4, 114, 101),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Toastr Example"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Toastr.show(
          context: context,
          message: "Hey Jude",
          // type: ToastType.info,
          showIcon: true,
          toastStyle: ToastStyle.filled,
          alignment: Alignment.bottomLeft,
          showCloseButton: true,
          // messageStyle: TextStyle(
          //   fontWeight: FontWeight.bold,
          //   fontSize: 30,
          // ),
          // borderStyle: BorderRadius.circular(30),
          // primaryColor: const Color.fromARGB(255, 15, 226, 226),
        ),
        tooltip: 'show',
        child: const Icon(Icons.add),
      ),
    );
  }
}
