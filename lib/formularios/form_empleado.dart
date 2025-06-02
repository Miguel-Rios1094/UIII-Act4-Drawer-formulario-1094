import 'package:flutter/material.dart';
import 'package:myapp/formularios/detalle_empleado.dart'; // Mantener el nombre por ahora, pero se sugiere renombrar a detalle_empleado.dart

class Empleados extends StatefulWidget {
  const Empleados({super.key});

  @override
  State<Empleados> createState() => _EmpleadosState();
}

class _EmpleadosState extends State<Empleados> {
  // Controladores para los campos de texto del empleado
  final TextEditingController _codeController = TextEditingController(); // Código del empleado
  final TextEditingController _nameController = TextEditingController(); // Nombre del empleado
  final TextEditingController _lastNameController = TextEditingController(); // Apellido del empleado
  final TextEditingController _positionController = TextEditingController(); // Puesto del empleado
  final TextEditingController _addressController = TextEditingController(); // Dirección del empleado
  final TextEditingController _phoneController = TextEditingController(); // Teléfono del empleado
  final TextEditingController _emailController = TextEditingController(); // Email del empleado

  @override
  void dispose() {
    // Es crucial liberar los controladores cuando el widget ya no se usa
    _codeController.dispose();
    _nameController.dispose();
    _lastNameController.dispose();
    _positionController.dispose();
    _addressController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text("Empleados"), // Título de la AppBar cambiado a "Empleados"
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // Campo para el Código del Empleado
            MyTextField(
              myController: _codeController,
              fieldName: "Código del Empleado",
              myIcon: Icons.vpn_key, // Icono para código
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),

            // Campo para el Nombre del Empleado
            MyTextField(
              myController: _nameController,
              fieldName: "Nombre del Empleado",
              myIcon: Icons.person,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),

            // Campo para el Apellido del Empleado
            MyTextField(
              myController: _lastNameController,
              fieldName: "Apellido del Empleado",
              myIcon: Icons.person_outline,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),

            // Campo para el Puesto del Empleado
            MyTextField(
              myController: _positionController,
              fieldName: "Puesto",
              myIcon: Icons.work, // Icono para puesto
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),

            // Campo para la Dirección
            MyTextField(
              myController: _addressController,
              fieldName: "Dirección",
              myIcon: Icons.location_on,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),

            // Campo para el Teléfono del Empleado
            MyTextField(
              myController: _phoneController,
              fieldName: "Teléfono del Empleado",
              myIcon: Icons.phone,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),

            // Campo para el Email del Empleado
            MyTextField(
              myController: _emailController,
              fieldName: "Email del Empleado",
              myIcon: Icons.email, // Icono para email
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 20.0),

            // Botón para enviar el formulario
            _buildSubmitButton(context),
          ],
        ),
      ),
    );
  }

  // Widget para el botón de enviar
  OutlinedButton _buildSubmitButton(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              // Se pasan los datos al widget Details.
              // Asegúrate de que el widget Details en detalle_cliente.dart
              // esté actualizado para recibir estos nuevos parámetros.
              return Details(
                name: _nameController.text,
                paternalLastName: _lastNameController.text, // Usando el campo de apellido para paternal
                maternalLastName: '', // Dejando vacío si solo hay un campo de apellido
                phone: _phoneController.text,
                address: _addressController.text,
                // Nuevos campos para Empleados
                code: _codeController.text,
                position: _positionController.text,
                email: _emailController.text,
              );
            },
          ),
        );
      },
      child: Text(
        "Enviar Formulario".toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}

// El widget MyTextField se mantiene igual ya que es genérico
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple.shade300),
        ),
        labelStyle: const TextStyle(color: Colors.deepPurple),
      ),
    );
  }
}
