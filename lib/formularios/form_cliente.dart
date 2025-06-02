import 'package:flutter/material.dart';
import 'package:myapp/formularios/detalle_cliente.dart';

class Clientes extends StatefulWidget {
  const Clientes({super.key});

  @override
  State<Clientes> createState() => _ClienteState();
}

class _ClienteState extends State<Clientes> {
    // Controladores para los campos de texto
  final TextEditingController _nameController = TextEditingController(); // Nombre del cliente
  final TextEditingController _paternalLastNameController = TextEditingController(); // Apellido Paterno
  final TextEditingController _maternalLastNameController = TextEditingController(); // Apellido Materno
  final TextEditingController _phoneController = TextEditingController(); // Teléfono del cliente
  final TextEditingController _addressController = TextEditingController(); // Dirección

  @override
  void dispose() {
    // Es crucial liberar los controladores cuando el widget ya no se usa
    _nameController.dispose();
    _paternalLastNameController.dispose();
    _maternalLastNameController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text("Clientes"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // Campo para el Nombre del Cliente
            MyTextField(
              myController: _nameController,
              fieldName: "Nombre del Cliente",
              myIcon: Icons.person,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),

            // Campo para el Apellido Paterno
            MyTextField(
              myController: _paternalLastNameController,
              fieldName: "Apellido Paterno",
              myIcon: Icons.person_outline,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),

            // Campo para el Apellido Materno
            MyTextField(
              myController: _maternalLastNameController,
              fieldName: "Apellido Materno",
              myIcon: Icons.person_outline,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),

            // Campo para el Teléfono del Cliente
            MyTextField(
              myController: _phoneController,
              fieldName: "Teléfono del Cliente",
              myIcon: Icons.phone,
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
            const SizedBox(height: 20.0),

            // Botón para enviar el formulario
            _buildSubmitButton(context),
          ],
        ),
      ),
    );
  }
    OutlinedButton _buildSubmitButton(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Details(
                name: _nameController.text,
                paternalLastName: _paternalLastNameController.text,
                maternalLastName: _maternalLastNameController.text,
                phone: _phoneController.text,
                address: _addressController.text,
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