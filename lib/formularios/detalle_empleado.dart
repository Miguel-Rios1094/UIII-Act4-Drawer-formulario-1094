import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  // Se han añadido todos los campos necesarios para mostrar los detalles del empleado
  final String code;
  final String name;
  final String paternalLastName; // Usado para el campo 'Apellido' del empleado
  final String maternalLastName; // Se mantiene por compatibilidad, aunque puede estar vacío
  final String position;
  final String address;
  final String phone;
  final String email;

  const Details({
    super.key,
    required this.code,
    required this.name,
    required this.paternalLastName,
    this.maternalLastName = '', // Se establece un valor por defecto para evitar errores si no se envía
    required this.position,
    required this.address,
    required this.phone,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Detalles del Empleado", // Título actualizado
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
            // Tile para el Código del Empleado
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0), // Bordes redondeados para estética
              ),
              leading: const Icon(Icons.badge, color: Colors.deepPurple),
              title: Text(
                "Código: $code",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 8.0), // Espacio entre tiles

            // Tile para el Nombre del Empleado
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
              ),
              leading: const Icon(Icons.person, color: Colors.deepPurple),
              title: Text(
                "Nombre: $name",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 8.0),

            // Tile para Apellido del Empleado (usando paternalLastName)
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
              ),
              leading: const Icon(Icons.person_outline, color: Colors.deepPurple),
              title: Text(
                "Apellido: $paternalLastName", // Cambiado de "Apellido Paterno" a "Apellido"
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 8.0),

            // Tile para Apellido Materno (solo si se proporciona)
            if (maternalLastName.isNotEmpty)
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
            if (maternalLastName.isNotEmpty) const SizedBox(height: 8.0),

            // Tile para el Puesto
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
              ),
              leading: const Icon(Icons.work, color: Colors.deepPurple),
              title: Text(
                "Puesto: $position",
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

            // Tile para Email
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
              ),
              leading: const Icon(Icons.email, color: Colors.deepPurple),
              title: Text(
                "Email: $email",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
