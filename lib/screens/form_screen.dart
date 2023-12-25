import 'package:flutter/material.dart';

class form_screen extends StatefulWidget {
  const form_screen({super.key});

  @override
  State<form_screen> createState() => _form_screenState();
}

class _form_screenState extends State<form_screen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Container(),
        title: const Text(
          'Nova Tarefa',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          height: 650,
          width: 375,
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 3)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: nameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Nome',
                      fillColor: Colors.white70,
                      filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: difficultyController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Difilculdate',
                      fillColor: Colors.white70,
                      filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: imageController,
                  onChanged: (value) => setState(() {}),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Imagem',
                      fillColor: Colors.white70,
                      filled: true),
                ),
              ),
              Container(
                width: 120,
                height: 135,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.blue)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imageController.text,
                      fit: BoxFit.fill,
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        return Image.asset(
                            'assets/images/no-image-available-like-missing-picture-vector-43938299.jpg');
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    ElevatedButton(onPressed: () {}, child: Text('Adicionar')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
