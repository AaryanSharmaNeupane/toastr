import 'package:flutter/material.dart';
import 'package:toastrx_flutter/toastrx_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toastr Demo',
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toastr Example"),
      ),
      body: const Center(
        child: Text("Tap the button to show a toast"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Toastr.show(
            // Required
            context: context,
            message: "Welcome To Toastr!",

            // Timing & Positioning
            // closeDuration: const Duration(seconds: 5),
            // alignment: Alignment.bottomRight,
            // margin: const EdgeInsets.all(30),

            // Appearance & Styles
            // toastStyle: ToastStyle.minimal,
            // type: ToastType.success,
            // primaryColor: const Color(0xFF0FE2E2), // overrides type color
            // borderStyle: BorderRadius.circular(12),
            // messageStyle: const TextStyle(
            //   fontWeight: FontWeight.bold,
            //   fontSize: 16,
            // color: Colors.white,
            // ),

            // Icon & Close Button
            // showIcon: true,
            // icon: Icons.check_circle,
            // showCloseButton: true,
          );
        },
        tooltip: 'Show Toast',
        child: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
