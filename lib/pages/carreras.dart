import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:portalutec/main.dart';
import 'package:portalutec/pages/homePage.dart';
import 'package:portalutec/pages/horasS.dart';
import 'package:portalutec/pages/informacion.dart';
import 'package:portalutec/pages/mapaUtec.dart';
import 'package:portalutec/pages/notas.dart';
import 'package:portalutec/pages/pruebasNoticias.dart';
import 'dart:io';

class Carreras extends StatelessWidget {
  const Carreras({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: MyListScreen(),
    );
  }
}
class MyListScreen extends StatelessWidget {
  final List<String> items = [
    'Técnico en Ingeniería de Software',
    'Técnico en Diseño Gráfico',
    'Técnico en Ingeniería de Redes Computacionales',
    'Licenciatura en Diseño Gráfico',
    'Licenciatura en Informática',
    'Arquitectura',
    'Ingeniería Industrial',
    'Ingeniería en Sistemas y Computación',
    'Técnico en Mercadeo y Ventas',
    'Técnico en Administración Turística',
    'Licenciatura en Negocios Internacionales',
    'Licenciatura en Mercadeo',
    'Licenciatura en Contaduría Pública',
    'Licenciatura en Administración de Empresas Turísticas',
    'Licenciatura en Administración de Empresas con Énfasis en Computación',
    'Licenciatura en Administración de Empresas',
    'Licenciatura en Ciencias Jurídicas',
    'Técnico en Ingeniería de Software',
    'Técnico en Ingeniería de Redes Computacionales',
    'Técnico en Diseño Gráfico',
    'Licenciatura en Diseño Gráfico',
    'Licenciatura en Informática',
    'Arquitectura',
    'Ingeniería Industrial',
    'Ingeniería en Sistemas y Computación',
    'Técnico en Relaciones Públicas',
    'Licenciatura en Comunicaciones',
    'Licenciatura en Psicología',
    'Licenciatura en Idioma Inglés',
  
  ];
  //logica para imprimir el pdf
   /*
  Future<void> _imprimirPDF(String contenido) async {
    final pdf = pw.Document();
    pdf.addPage(pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Text(contenido),
        );
      },
    ));

    await Printing.layoutPdf(onLayout: (format) async => pdf.save());
  }
*/  
 Future<void> _imprimirPDF(String carrera) async {
    final pdf = pw.Document();
    pdf.addPage(pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Text('Detalles de $carrera'),
        );
      },
    ));

    final Uint8List bytes = await pdf.save();

    final appDir = await getApplicationDocumentsDirectory();
    final appDirPath = appDir.path;

    final filePath = '$appDirPath/carrera_$carrera.pdf'; //cambiar el nombre de la clase a carrera
    //para hacerlo dinamico final filePath = '$appDirPath/carrera_$carrera.pdf';
    final file = await File(filePath).writeAsBytes(bytes);

    await Printing.layoutPdf(
      onLayout: (format) async => bytes,
      name: 'carrera_$carrera',
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 66, 0, 0),
        title: Text('Lista de Carreras'),
        leading: Builder(
          
          builder: (context) => IconButton(
            icon: Icon(MdiIcons.viewList),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
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

      body: Container(
       color: Color.fromARGB(255, 84, 4, 4).withOpacity(0.9), // Color de fondo con opacidad
        child: Column(
          children: <Widget>[
            Padding(
        
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Carreras Utec',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              
            ),
            
          Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4.0,
                    margin: EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(items[index]),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Información de la Carrera'),
                              content: Text('Detalles de ${items[index]} :'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    // Aquí puedes agregar la lógica para el botón a la izquierda
                                     Navigator.of(context).pop();
                                    print('Botón Izquierdo presionado');
                                  },
                                  child: Text('Cerrar'),
                                ),
                                ElevatedButton(
                                   onPressed: () async {
                                    await _imprimirPDF(items[index]);
                                  
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 190, 9, 9), // Cambia el color del botón aquí
                                  ),
                                  child: Text('Imprimir'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}