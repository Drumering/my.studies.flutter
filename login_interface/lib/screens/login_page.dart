import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Login Page'),
        ),
        body: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                MyTextField(
                  label: 'Digite seu email',
                  errorMessage: 'Email invalido',
                  onSaved: (email) {
                    setState(() {
                      this.email = email;
                    });
                  },
                ),
                MyTextField(
                  label: 'Digite sua senha',
                  errorMessage: 'Senha invalida',
                  obscured: true,
                  onSaved: (password) {
                    setState(() {
                      this.password = password;
                    });
                  },
                ),
                ElevatedButton(
                  child: const Text('Entrar'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Login realizado com sucesso!'),
                        ),
                      );
                      _formKey.currentState!.save();
                    }
                  },
                ),
                Text('Email: $email'),
                Text('Password: $password'),
              ],
            ),
          ),
        ));
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    this.obscured = false,
    required this.label,
    required this.errorMessage,
    this.onSaved,
  }) : super(key: key);

  final String label;
  final String errorMessage;
  final bool obscured;
  final Function(String value)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        obscureText: obscured,
        decoration: InputDecoration(
            labelText: label, border: const OutlineInputBorder()),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return errorMessage;
          }
          return null;
        },
        onSaved: (value) {
          if (value != null && value.isNotEmpty) {
            onSaved?.call(value);
          }
        },
      ),
    );
  }
}
