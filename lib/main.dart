import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portalutec/pages/HomePage.dart';
//importaciones de firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

/*  cambios en main con acceso a firebase */ //actualizado
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

//declarando los controles
//TextEditingController userController = TextEditingController();
// TextEditingController passwordController = TextEditingController();
class MyApp extends StatelessWidget {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String getUserEntered() {
    return userController.text;
  }

  String getPasswordEntered() {
    return passwordController.text;
  }
  //const MyApp({super.key});

  @override

  //void @override
/*
  void initState() {
    super.initState();
    getUsers();
  }
  void getUsers() async {
    CollectionReference collectionReference = FirebaseFirestore.instance.collection("users");
    QuerySnapshot users = await collectionReference.get();
    if(users.docs.length != 0){
      for (var doc in users.docs) {
        print(doc.data());
      }
    }
  }*/

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          cuerpo(context), //se llama la funcion del cuerpo
          Screen1(
            userController: userController,
            passwordController: passwordController,
          ),
        ]),
      ),
    );
  }

  //en esta funcion se va devolver un widget
  Widget cuerpo(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255), // Color de fondo
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: double
                      .infinity, // Ajusta el ancho de la imagen al ancho de la pantalla
                  height: MediaQuery.of(context).size.height *
                      0.5, // Altura de la imagen
                  child: Image.asset(
                    "assets/logo_utec.png",
                    fit: BoxFit.contain, // Ajusta la imagen sin distorsionarla
                  ),
                ),
                SizedBox(
                    height: 5), // Espacio entre la imagen y otros elementos
                Align(
                  alignment: Alignment.center,
                  child: name(),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.center,
                  child: user(userController),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.center,
                  child: password(passwordController),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Screen1(
                    userController: userController,
                    passwordController: passwordController,
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: savePin(),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: invitado(),
                ),
                SizedBox(height: 22),
                // Espacio adicional al final
              ],
            ),
          ),
        ),
      ),
    );
  }

  //se declara widget nombre box
  Widget name() {
    return Text(
      "Sing in",
      style: TextStyle(
          color: const Color.fromARGB(255, 0, 0, 0),
          fontSize: 19,
          fontWeight: FontWeight.bold),
    );
  }
  //widget para user box con un TextField

//para link de recuperacion contraseña
  Widget savePin() {
    return TextButton(onPressed: () {}, child: Text("Recuperar Clave"));
  }

  Widget user(TextEditingController controller) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: TextField(
        controller: userController, // Asigna el controlador
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: "User",
          fillColor: Color.fromARGB(255, 240, 233, 233),
          filled: true,
        ),
      ),
    );
  }

  Widget password(TextEditingController controller) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: TextField(
        controller: passwordController, // Asigna el controlador
        obscureText: true,
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: "PassWord",
          fillColor: Color.fromARGB(255, 240, 233, 233),
          filled: true,
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController userController;
  final TextEditingController passwordController;
  Screen1({
    required this.userController,
    required this.passwordController,
  });

  // TextEditingController userController = TextEditingController();
//  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        primary: const Color.fromARGB(255, 24, 25, 25),
        onPrimary: const Color.fromARGB(255, 255, 255, 255),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      ),
      child: Text("Iniciar Sesión"),
      onPressed: () async {
        try {
          // Obtener los valores ingresados por el usuario
          // String userEntered = userController.text;//"admin@gmail.com";
          //String passwordEntered = passwordController.text;//"123456";

          // Obtener los valores ingresados por el usuario
          // Obtener los valores ingresados por el usuario
          String userEntered = userController.text;
          String passwordEntered = passwordController.text;
          // Obtener los datos del documento en Firestore
          DocumentSnapshot userSnapshot = await _firestore
              .collection('usuarios')
              .doc('idUsuario')
              .get(); //userEntered

          if (userSnapshot.exists) {
            // Obtener los datos del documento
            String storedUser = userSnapshot.get('nombre');
            String storedPassword = userSnapshot.get('contraseña');

            // Realizar la comparación con los valores ingresados por el usuario
            if (_validateUser(userEntered, storedUser) &&
                _validatePassword(passwordEntered, storedPassword)) {
              // Si las credenciales son correctas, realizar la autenticación con Firebase
              await _auth.signInWithEmailAndPassword(
                email: userEntered,
                password: passwordEntered,
              );

              // Navegar a la página principal
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            } else {
              // Mostrar mensajes de error al usuario si la validación falla
              if (!_validateUser(userEntered, storedUser)) {
                print("El usuario ingresado no coincide con el almacenado");
              }
              if (!_validatePassword(passwordEntered, storedPassword)) {
                print("La contraseña ingresada no coincide con la almacenada");
              }
            }
          } else {
            print("El usuario no existe en la base de datos");
          }
        } catch (e) {
          print("Error durante la autenticación: $e");
        }
      },
    );
  }

  bool _validateUser(String enteredUser, String storedUser) {
    return enteredUser == storedUser;
  }

  bool _validatePassword(String enteredPassword, String storedPassword) {
    return enteredPassword == storedPassword;
  }
}

//campo para Password

//agreagnod imagen de inicio login

//creando la clase para el evento boton

class invitado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(),
          // primary: const Color.fromARGB(255, 24, 25, 25),
          onPrimary: Color.fromARGB(255, 0, 0, 0),
          padding: EdgeInsets.symmetric(
              horizontal: 30, vertical: 10)), //modificar tamaño del boton
      child: Text("Invitado"),
      onPressed: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()))
      },
    );
  }
}
