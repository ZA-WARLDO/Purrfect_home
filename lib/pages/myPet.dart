import 'package:flutter/material.dart';

class MyPet extends StatefulWidget {
  const MyPet({super.key});

  @override
  State<MyPet> createState() => _MyPetState();
}

class _MyPetState extends State<MyPet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("MyPet page"),),
    );
  }
}
