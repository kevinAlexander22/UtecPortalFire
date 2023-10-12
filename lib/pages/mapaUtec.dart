import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portalutec/main.dart';
import 'package:portalutec/pages/carreras.dart';
import 'package:portalutec/pages/homePage.dart';
import 'package:portalutec/pages/horasS.dart';
import 'package:portalutec/pages/informacion.dart';
import 'package:portalutec/pages/notas.dart';
import 'package:portalutec/pages/noticias.dart';

class MapaUtec extends StatelessWidget {
  const MapaUtec({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Edificios(),
    );
  }
}

class CarouselItem {
  final String title;
  final String additionalInfo;
  final String imagePath; // Agrega esta propiedad

  CarouselItem(this.title, this.additionalInfo, this.imagePath);
}

class Edificios extends StatelessWidget {
  final List<CarouselItem> items = [
    CarouselItem('Edificio Simón Bolívar', 'Dependencias : \nhttps://www.utec.edu.sv/campus.php','assets/simon_bolivar.jpg'),
    CarouselItem('Museo Universitario', 'Dependencias: \nDecanato de la Facultad de Derecho\nLaboratorio 12, de Diseño e Innovación\nAulas: 201 a 208\nAulas: 301 a 309\nAulas: 401 a 407\nAulas: 501 a 507','assets/museoU.jpg'),
    CarouselItem('Edificio Benito Juárez', 'Dependencias: \nLaboratorio 3 de informática\nBiblioteca Central\nPlaza Benito Juárez\nAulas: 201 a 203\nAulas: 301 a 305\nAulas: 401 a 405\nAulas 501 a 506','assets/benito_juarez.jpg'),
    CarouselItem('Edificio Francisco Morazán', 'Dependencias: \nAuditorio De La Paz\nLaboratorio 4, de Cisco\nAulas: 201 a 207\nAulas: 301 a 309\nAulas: 401 a 407\nLaboratorios 1 y 2, de informática\nLaboratorio de Tecnologías Avanzadas\nAulas: 501 a 507','assets/francisco_morazan.jpg'),
    CarouselItem('Edificio Jorge Luis Borges', 'Dependencias : \nLibrería Multilibros\nLaboratorio de fotografía\nEstudio de fotografía publicitaria\nAula 201\nAula 301','assets/jorge_luis_borges.jpg'),
    CarouselItem('Edificio Los Fundadores', 'Dependencias: \nPresidencia de la Utec\nVicepresidencia de la Utec\nAsesoría General de Presidencia y Rectoría\nRectoría\nSala de reuniones','assets/fundadores.jpg'),
    CarouselItem('Edificio Giuseppe Garibaldi', 'Dependencias: \nDirección de Escuela de Idiomas\nBiblioteca especializada de Idiomas\nLaboratorio 5 y 6 de Informática aplicada al Inglés\nLaboratorio 9 de Arquitectura y Diseño\nAulas 201 a 207','assets/giuseppe_garibaldi.jpg'),
    CarouselItem('Edificio Gabriela Mistral', 'Dependencias: \nAdministración Académica\nDirección de Nuevo Ingreso\nColecturía\nDecanato de Estudiantes\nCoordinación de Unidad de Calidad\nAuditoría Académica\nInversiones Didáctica','assets/gabriela_mistral.jpg'),
    CarouselItem('Casa Dr. José Adolfo Araujo Romagoza', 'Dependencias: \nDirección de Proyección Social\nBiblioteca de Investigaciones\n3D Lab\nDirección de Investigaciones\nSala de reuniones\nDocentes investigadores','assets/ing_araujo.jpg'),
    CarouselItem('Polideportivo', 'Dependencias: \nCoordinación de Deportes\nLaboratorio de Arqueología\nCanchas de fútbol rápido y baloncesto','assets/polideportivo.jpg'),
    CarouselItem('Edificio Thomas Jefferson', 'Dependencias: \nDirección de la Escuela de Antropología\nDocentes de la Escuela de Antropología\nProyecto Educo Utec\nAula Magna\nAulas: 5 y 6\nLaboratorio 11, de Informática y Mat Lab','assets/thomas_jefferson.jpg'),
    CarouselItem('Edificio Federico García Lorca', 'Dependencias: \nDirección de la Escuela de Comunicaciones\nLaboratorio de Televisión\nRadio Utec, 970 AM\nSala de Redacción\nAulas: 201 a 206\nAulas: 301 a 302\nAulas: 401 - 402','assets/federico_lorca.jpg'),
    CarouselItem('Edificio José Martí', 'Dependencias: \nDirección de Tecnología y Sistemas\nSoporte Técnico\nSala de Videoconferencias\nÁrea técnica, de programación y de diseño de Educación Virtual\nDirección de Educación Virtual','assets/museoU.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 66, 0, 0),
        title: Text('Mapa Utec'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(MdiIcons.viewList),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Abre el menú lateral
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 87, 6, 6), // Color de inicio
              const Color.fromARGB(255, 0, 0, 0), // Color de fin
            ],
          ),
        ),
        child: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 660,
              autoPlay: true,
              aspectRatio: 0.5,
              enlargeCenterPage: true,
            ),
            items: items.map((item) {
              return Center(
                child: Container(
                  margin: EdgeInsets.all(1.0),
                  child: Card(
                       elevation: 10, // Añade sombra al Card para resaltarlo
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Ajusta el radio de los bordes según sea necesario
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft, // Cambia la dirección del gradiente según tus preferencias
          end: Alignment.bottomRight,
          colors: [Color.fromARGB(255, 74, 35, 35), Color.fromARGB(255, 40, 6, 6)], // Cambia los colores del gradiente
        ),
      ),
                                    
                    child: Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Center(
                              child: Text(
                                item.title,
                                style: TextStyle(fontSize: 23.0, color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                           Image.asset(
                              item.imagePath, // Ruta de la imagen
                              width:280, // Ancho de la imagen
                              height: 280, // Alto de la imagen
                            ),
                          SizedBox(height: 1),
                          Text(
                            item.additionalInfo,
                            style: TextStyle(fontSize: 15.5, color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

