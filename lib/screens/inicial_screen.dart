import 'package:flutter/material.dart';
import 'package:teste/components/task.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({super.key});
  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Container(),
        title: const Text(
          "Tarefas",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        curve: Curves.bounceInOut,
        duration: const Duration(microseconds: 9000),
        child: ListView(
          children: const [

            Task(
                "Aprender Flutter",
                'assets/images/robot-507811_640.webp',
                3),
            Task(
                "Andar de Bicicleta",
                'assets/images/bike-4404230_640.png',
                3),
            Task(
                "Jogar Video Game",
                'assets/images/x-box-1791671_640.png',
                3),
            Task(
                "Meditar",
                'assets/images/yoga-2176668_640.png',
                5),
            Task(
                "fazer Trilha",
                'assets/images/mount-everest-6395759_640.jpg',
                5),

            SizedBox(
              height: 76,
            )
          ],

        ),
      ),
      floatingActionButton: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                opacity = !opacity;
              });
            },
            backgroundColor: Colors.lightBlue,
            child: const Icon(Icons.add),
          )),
    );
  }
}
