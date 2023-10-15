import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:portalutec/main.dart';
import 'package:portalutec/pages/carreras.dart';
import 'package:portalutec/pages/homePage.dart';
import 'package:portalutec/pages/horasS.dart';
import 'package:portalutec/pages/informacion.dart';
import 'package:portalutec/pages/mapaUtec.dart';
import 'package:portalutec/pages/notas.dart';
import 'package:portalutec/pages/noticias.dart';

class Pensum extends StatelessWidget {
  const Pensum({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BotonesScreen(),
    );
  }
}


class BotonesScreen extends StatelessWidget {
  final List<String> textos = [
    'ALGORITMOS',
    'INGENIERÍA Y PRODUCTIVIDAD',
    'MATEMÁTICA I',
    'SEMINARIO TALLER DE COMPETENCIAS',
    'BASE DE DATOS I',
    'DIBUJO TÉCNICO',
    'MATEMÁTICA II',
    'PROGRAMACIÓN ORIENTADA A OBJETOS',
    'REALIDAD NACIONAL',
    'BASE DE DATOS II',
     'FILOSOFÍA',
     'FÍSICA I',
     'MATEMÁTICA III',
     'PROGRAMACIÓN I',
     'LENGUAJE UNIFICADO DE MODELADO (UML)',
     'MATEMÁTICA IV',
     'DESARROLLO DE LA PLATAFORMA WEB',
     'FÍSICA II',
     'PROGRAMACIÓN II',
     'ESTADÍSTICA Y PROBABILIDADES',
     'ÉTICA',
     'FÍSICA III',
     'PROGRAMACIÓN III',
     'REDES DE DATOS I',
     'INTRODUCCIÓN AL ANÁLISIS DE CIRCUITOS',
     'MATEMÁTICA FINANCIERA',
     'ORGANIZACIÓN DE LAS COMPUTADORAS',
     'PROGRAMACIÓN IV',
     'REDES DE DATOS II',
     'ADMINISTRACIÓN I',
     'LENGUAJE DE MÁQUINA',
     'ELECTRÓNICA',
     'EXPRESIÓN ORAL Y ESCRITA DEL ESPAÑOL',
     'INGLÉS I',
     'ADMINISTRACIÓN DE CENTROS DE CÓMPUTO',
     'SISTEMAS DIGITALES',
     'INGLÉS II',
     'SISTEMAS DE INFORMACIÓN GERENCIAL',
     'ESTÁNDARES DE PROGRAMACIÓN',
     'TÉCNICAS DE PRODUCCIÓN INDUSTRIAL DE SOFTWARE I',
     'TÉCNICAS DE PRODUCCIÓN INDUSTRIAL DE SOFTWARE II',
     'SISTEMAS OPERATIVOS',
     'TÉCNICAS DE CALIDAD DE SOFTWARE',
     'NORMAS Y ESTÁNDARES INTERNACIONALES',
     'FORMULACIÓN Y EVALUACIÓN DE PROYECTOS',
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 66, 0, 0),
        title: Text('Pensum'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(MdiIcons.viewList),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Abre el menú lateral
            },
          ),
        ),
      ),
      //se agrega menu laterla 
      drawer: Drawer(
        //Color.fromARGB(255, 141, 1, 1),
        backgroundColor: Color.fromARGB(255, 64, 15, 15),
        child: ListView(
       
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Nombre de usuario'),
              accountEmail: Text('2500002023@mail.utec.edu.sv'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 94, 11, 11),
              ),
            ),
               ListTile(
              leading: Icon(
                    MdiIcons.home, // Reemplaza con el icono que estás utilizando
                    color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color a tu preferencia
                  ),
              title: Text(
                'Inicio',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              tileColor: Color.fromARGB(255, 84, 4, 4),
              splashColor: Colors.white,
            ),
            ListTile(
              leading:  Icon(
                    MdiIcons.noteEdit, // Reemplaza con el icono que estás utilizando
                    color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color a tu preferencia
                  ),
              title: Text(
                'Notas',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notas()),
                );
              },
              tileColor: Color.fromARGB(255, 84, 4, 4),
              splashColor: Color.fromARGB(255, 59, 61, 60),
            ),
             ListTile(
              leading:  Icon(
                    MdiIcons.newspaper, // Reemplaza con el icono que estás utilizando
                    color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color a tu preferencia
                  ),
              title: Text(
                'Noticias',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NoticiasU()),
                );
              },
              tileColor: Color.fromARGB(255, 84, 4, 4),
              splashColor: Colors.white,
            ),
      ListTile(
              leading:  Icon(
                    MdiIcons.clock, // Reemplaza con el icono que estás utilizando
                    color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color a tu preferencia
                  ),
              title: Text(
                'Horas Sociales',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HorasU()),
                );
              },
              tileColor: Color.fromARGB(255, 84, 4, 4),
              splashColor: Colors.white,
            ),
           ListTile(
              leading:  Icon(
                    MdiIcons.information, 
                    color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color a tu preferencia
                  ),
              title: Text(
                'Informacion Academica',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformacionU()),
                );
              },
              tileColor: Color.fromARGB(255, 84, 4, 4),
              splashColor: Colors.white,
            ),
            ListTile(
              leading:  Icon(
                    MdiIcons.map, // Reemplaza con el icono que estás utilizando
                    color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color a tu preferencia
                  ),
              title: Text(
                'Mapa Utec',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapaUtec()),
                );
              },
              tileColor: Color.fromARGB(255, 84, 4, 4),
              splashColor: Colors.white,
            ),
               ListTile(
              leading:  Icon(
                    MdiIcons.school, // Reemplaza con el icono que estás utilizando
                    color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color a tu preferencia
                  ),
              title: Text(
                'Carreras',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Carreras()),
                );
              },
              tileColor: Color.fromARGB(255, 84, 4, 4),
              splashColor: Colors.white,
            ),
            ListTile(
              leading: Icon(
                    MdiIcons.informationOff, // Reemplaza con el icono que estás utilizando
                    color: const Color.fromARGB(255, 255, 255, 255), // Cambia el color a tu preferencia
                  ),
              title: Text(
                'Cerrar Sesion',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              tileColor: Color.fromARGB(255, 84, 4, 4),
              splashColor: Colors.white,
            ),
          ],
        ),
      ),
      //termina menu lateral 
      body:  MyGridView(textos: textos),
    );
  }
}
class MyGridView extends StatefulWidget {
  final List<String> textos;

  MyGridView({required this.textos});

  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  int pressedIndex = -1; // Índice de la celda presionada

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, //cambia la cantidad de columnas
        crossAxisSpacing: 3.0,
        mainAxisSpacing: 3.0,
      ),
      itemCount: widget.textos.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            // Manejar la acción al tocar la celda
            // Puedes agregar lógica adicional aquí si es necesario
          },
          onTapDown: (details) {
            // Se ejecuta cuando se presiona la celda
            setState(() {
              pressedIndex = index;
            });
          },
          onTapCancel: () {
            // Se ejecuta cuando se cancela la presión
            setState(() {
              pressedIndex = -1;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: pressedIndex == index
                  ? Colors.grey.withOpacity(0.5) // Cambia el tono cuando está presionado
                  : Color.fromARGB(255, 66, 0, 0),
              border: Border.all(color: Color.fromARGB(255, 28, 1, 1)),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text(
                widget.textos[index],
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 13.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      },
    );
  }
}









