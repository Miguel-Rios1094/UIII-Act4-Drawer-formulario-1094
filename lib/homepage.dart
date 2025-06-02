import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0.2,
        title: Text("Formularios Tablas"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: <Widget>[
          InkWell(
            onTap: null,
            child:  IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child:  IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              accountName: Text("Miguel Rios 1094"), 
              accountEmail: Text("a.22308051281094@gmail.com"),
              currentAccountPicture: GestureDetector(

                child: CircleAvatar(
                  child: CircleAvatar(
                                radius: 130,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/Miguel-Rios1094/DulceriaVero_imagenes_app_flutter/refs/heads/main/perfil.png'),
            ),
                  ),
                ),
              ), 
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: Colors.pink),
                title: Text("Pagina De Inicio"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/cliente");},
                leading: Icon(Icons.radio, color: const Color.fromARGB(255, 0, 0, 0)),
                title: Text("Clientes"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/empleado");},
                leading: Icon(Icons.radio, color: const Color.fromARGB(255, 0, 0, 0)),
                title: Text("Empleados"),
              ),
            ),

          ],

        ),
      ),
    );
  }
}