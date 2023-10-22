import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RecuperarClave extends StatelessWidget {
  const RecuperarClave({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BotonesScreen(),
    );
  }
}

class BotonesScreen extends StatefulWidget {
  @override
  _BotonesScreenState createState() => _BotonesScreenState();
}

class _BotonesScreenState extends State<BotonesScreen> {
  final TextEditingController textFieldController1 = TextEditingController();
  final TextEditingController textFieldController2 = TextEditingController();

  @override
  void dispose() {
    textFieldController1.dispose();
    textFieldController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 66, 0, 0),
        title: Center(child: Text('Recuperar Clave')),
      ),

body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textFieldController1,
                decoration: InputDecoration(
                  labelText: 'Usuario',
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: textFieldController2,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                ),
              ),
              SizedBox(height: 40),
              TextButton(
                onPressed: () {
                  // Lógica del botón
                  print('Texto del Primer TextField: ${textFieldController1.text}');
                  print('Texto del Segundo TextField: ${textFieldController2.text}');
                },
                style: TextButton.styleFrom(
               textStyle: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 3, 3, 3), // Cambia el color del texto aquí
                  ),
                ),
                child: Text('Guardar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RecuperarClave(),
  ));
}