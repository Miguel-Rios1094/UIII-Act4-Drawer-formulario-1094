import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String name; // Corresponde a 'productName' en tu diseño original
  final String paternalLastName;
  final String maternalLastName;
  final String phone; // Corresponde a 'productDescription' en tu diseño original
  final String address;

  const Details({
    Key? key,
    required this.name,
    required this.paternalLastName,
    required this.maternalLastName,
    required this.phone,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Detalles del Cliente", // Título actualizado
        ),
        backgroundColor: Colors.deepPurple.shade300, // Color de AppBar consistente
        // Botón para retroceder a la pantalla anterior
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0), // Ajustado el padding para mejor visualización
        child: ListView(
          children: [
            // Tile para el Nombre del Cliente
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0), // Bordes redondeados para estética
              ),
              leading: const Icon(Icons.person, color: Colors.deepPurple),
              title: Text(
                "Nombre: $name",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 8.0), // Espacio entre tiles

            // Tile para Apellido Paterno
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
              ),
              leading: const Icon(Icons.person_outline, color: Colors.deepPurple),
              title: Text(
                "Apellido Paterno: $paternalLastName",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 8.0),

            // Tile para Apellido Materno
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
              ),
              leading: const Icon(Icons.person_outline, color: Colors.deepPurple),
              title: Text(
                "Apellido Materno: $maternalLastName",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 8.0),

            // Tile para Teléfono
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
              ),
              leading: const Icon(Icons.phone, color: Colors.deepPurple),
              title: Text(
                "Teléfono: $phone",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 8.0),

            // Tile para Dirección
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
              ),
              leading: const Icon(Icons.location_on, color: Colors.deepPurple),
              title: Text(
                "Dirección: $address",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),

            // Puedes mantener o eliminar los ListTile estáticos de "Bag" y "Chair" si no son relevantes
            // para mostrar detalles del cliente. Los he comentado por ahora.
            /*
            const SizedBox(height: 8.0),
            ListTile(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
              leading: IconButton(
                icon: const Icon(Icons.shopping_bag_outlined,
                    color: Colors.blueAccent),
                onPressed: () {},
              ),
              title: const Text(
                "Bag",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              subtitle: const Text("Brown Color Bag with straps"),
              trailing: const Icon(
                Icons.delete,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8.0),
            ListTile(
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
              leading: IconButton(
                icon: const Icon(Icons.chair, color: Colors.blueAccent),
                onPressed: () {},
              ),
              title: const Text(
                "Chair",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              subtitle: const Text("Wooden swinging Chair"),
              trailing: const Icon(
                Icons.delete,
                color: Colors.grey,
              ),
            ),
            */
          ],
        ),
      ),
    );
  }
}