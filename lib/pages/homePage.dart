import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:portalutec/main.dart';
import 'package:portalutec/pages/aranceles.dart';
import 'package:portalutec/pages/calendario.dart';
import 'package:portalutec/pages/carreras.dart';
import 'package:portalutec/pages/horasS.dart';
import 'package:portalutec/pages/informacion.dart';
import 'package:portalutec/pages/mapaUtec.dart';
import 'package:portalutec/pages/notas.dart';
import 'package:portalutec/pages/noticias.dart';
import 'package:portalutec/pages/pensum.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BotonesScreen(),
    );
  }
}
class BotonesScreen extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/pensum.png',
    'assets/materias.png',
    'assets/puntos_pago.png',
    'assets/calendar.png',
    'assets/aranceles.png',
    'assets/informacion.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 66, 0, 0),
        title: Text('UTEC'),
        leading: Builder(
          
          builder: (context) => IconButton(
            icon: Icon(MdiIcons.menu),
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
      //termina el menu lateral 
body: Container(
  
   decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 87, 6, 6), // Color de inicio
            Color.fromARGB(255, 11, 11, 11), // Color de fin
            ],
          ),
        ),
  
  child:   Padding(
    
  
    padding: const EdgeInsets.all(30.0),
  
    child: Center(
  
      child: SizedBox(
  
        width: 310,
  
        height: 600, // Ajusta la altura según tus necesidades
  
        child: GridView.builder(
  
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  
            crossAxisCount: 2, // 2 columnas por fila
  
            crossAxisSpacing: 8.0, // Espacio horizontal entre elementos
  
            mainAxisSpacing: 24.0, // Espacio vertical entre elementos
  
          ),
  
          itemCount: imagePaths.length,
  
          itemBuilder: (BuildContext context, int index) {
  
            // Lista de textos para cada imagen
  
            List<String> textos = [ 

              'Pensum',
  
              'Materias',
  
              'Puntos de Pago',
  
              'Calendario Utec',
  
              'Aranceles',
  
              'Informacion',
  
              // Agrega más textos si es necesario
  
            ];
  
            return GestureDetector(
              onTap: () {
                // Agrega aquí la navegación cuando se haga clic en la imagen
                if (index == 0) {
                  // Por ejemplo, si se hace clic en la primera imagen (index 0), navega a la pantalla correspondiente
                  //vagacion para la pantalla pensum
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pensum()),
                  );
                } else if (index == 1) {
                  //navegacion para pantalla materias. 
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notas()),
                  );
                }  else if (index == 2) {
                  // navegacion pantalla puntos de pago 
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapaUtec()),
                  );
                }
                 else if (index == 3) {
                  // navegacion pantalla calendario utec
                  Navigator.push(
                  context,
                    MaterialPageRoute(builder: (context) => CalendarScreen()),
                  );
                }
                  else if (index == 4) {
                  // navegacion pantalla aranceles
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Aranceles()),
                  );
                }
                  else if (index == 5) {
                  // navegacion pantalla informacion utec  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InformacionU()),
                  );
                }
              },
  
              child: Center(
  
                child: Container(
  
                  width: 205, // Ancho del contenedor cuadrado
  
                  height: 205, // Alto del contenedor cuadrado
  
                  decoration: BoxDecoration(
  
                    color: Color.fromARGB(255, 95, 10, 10),
  
                    borderRadius: BorderRadius.circular(35.0), // Agrega bordes redondeados
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.9), // Color de la sombra
                          offset: Offset(0, 15), // Desplazamiento de la sombra en el eje x e y
                          blurRadius: 15.0, // Radio de desenfoque de la sombra
                        ),
                      ],
                  ),
  
                  child: Column(
  
                    mainAxisAlignment: MainAxisAlignment.center,
  
                    children: [
  
                      Image.asset(
  
                        imagePaths[index],
  
                        width: 108, // Ancho de la imagen
  
                        height: 108, // Alto de la imagen
  
                        // fit: BoxFit.cover, // Ajusta la imagen para llenar el contenedor cuadrado
  
                      ),
  
                      SizedBox(height: 2), // Espacio entre la imagen y el texto
  
                      Text(
  
                        textos[index], // Usa el texto según el índice
  
                        style: TextStyle(
  
                          fontSize: 17.0,
  
                          color: Color.fromARGB(255, 255, 255, 255), // Cambia el color del texto según tus preferencias
  
                        ),
  
                      ),
  
                    ],
  
                  ),
  
                ),
  
              ),
  
            );
  
          },
  
        ),
  
      ),
  
    ),
  
  ),
),





    );
  }
}
