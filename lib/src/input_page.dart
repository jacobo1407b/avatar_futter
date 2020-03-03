import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Caracteres escritos: ${_nombre.length}'),
          labelText: 'Nombre de la persona: ',
          hintText: 'Nombre persona',
          helperText: 'Solo escribe el nombre completo',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
        ),
        onChanged: (valor) {
          setState(() {
            _nombre = valor;
          });
        });
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('El nombre es: $_nombre'),
      subtitle: Text('Email: $_email'),
    );
  }

  Widget _crearEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          labelText: 'Correo electronico',
          hintText: 'Correo de la persona',
          helperText: 'Solo escribe el email por favor',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email),
        ),
        onChanged: (valor) {
          setState(() {
            print(valor);
            _email = valor;
          });
        });
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          labelText: 'Password',
          hintText: 'Password de 6 caracteres',
          helperText: 'escribe 6 caracteres',
          suffixIcon: Icon(Icons.lock_outline),
          icon: Icon(Icons.phone_locked)
        ),
        onChanged: (valor) {
          setState(() {
            print(valor);
            _password = valor;
          });
        });
  }
}
