import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portalutec/main.dart';
import 'package:portalutec/pages/carreras.dart';
import 'package:portalutec/pages/homePage.dart';
import 'package:portalutec/pages/horasS.dart';
import 'package:portalutec/pages/informacion.dart';
import 'package:portalutec/pages/mapaUtec.dart';
import 'package:portalutec/pages/noticias.dart';

class Notas extends StatelessWidget {
  const Notas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BotonesScreen(),
    );
  }
}
class CarouselItem {
  final String title;
  final String additionalInfo;

  CarouselItem(this.title, this.additionalInfo);
}

class BotonesScreen extends StatelessWidget {
  final List<CarouselItem> items = [
    CarouselItem('TÉCNICAS DE CALIDAD DE SOFTWARE', 'Evaluación 1 : 5.6\nOtra información'),
    CarouselItem('Elemento 2', 'Información adicional para el Elemento 2'),
    CarouselItem('Elemento 3', 'Información adicional para el Elemento 3'),
    CarouselItem('Elemento 4', 'Información adicional para el Elemento 4'),
    CarouselItem('Elemento 5', 'Información adicional para el Elemento 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 66, 0, 0),
        title: Text('Notas'),
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
              height: 500,
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: items.map((item) {
              return Center(
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: TextStyle(fontSize: 22.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          item.additionalInfo,
                          style: TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                      ],
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
