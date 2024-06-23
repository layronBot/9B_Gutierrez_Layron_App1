import 'package:flutter/material.dart';

void main() => runApp(const FormularioApp());

class FormularioApp extends StatelessWidget {
  const FormularioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulario de Validación'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Formulario(),
        ),
      ),
    );
  }
}

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Validación de correo electrónico
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor ingrese un correo electrónico';
    }
    // Validar dominio específico
    const pattern =
        r'^[a-zA-Z0-9._%+-]+@(gmail\.com|hotmail\.com|gmail\.es|hotmail\.es)$';
    final regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'Ingrese un correo electrónico válido con @, punto, gmail/hotmail, y .com o .es';
    }
    return null;
  }

  // Validación de contraseña
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor ingrese una contraseña';
    }
    if (value.length < 8) {
      return 'La contraseña debe tener al menos 8 caracteres';
    }
    return null;
  }

  // Acción de validación del formulario
  void _validateForm() {
    if (_formKey.currentState?.validate() ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Formulario válido')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Formulario inválido')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              hintText: 'Correo Electrónico',
            ),
            validator: _validateEmail,
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(
              hintText: 'Contraseña',
            ),
            obscureText: true,
            validator: _validatePassword,
          ),
          const SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              onPressed: _validateForm,
              child: const Text('Validar'),
            ),
          ),
        ],
      ),
    );
  }
}

