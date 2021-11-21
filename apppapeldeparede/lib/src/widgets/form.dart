import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({Key? key, required this.size}) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size * 3,
      width: size * 4,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            elevation: 20,
            child: Container(
              padding: EdgeInsets.all(20),              
              child: Column(
                children: [_emailInput(), _passwordInput()],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          _boton(),
        ],
      ),
    );
  }
}

Widget _emailInput() {
  return TextFormField(
      decoration: const InputDecoration(
          //icon: Icon(Icons.email),
          hintText: 'Correo',
          labelText: 'Correo',
          focusColor: Color(0xff5157CB),
          fillColor: Color(0xff5157CB)
      ),
  );
}

Widget _passwordInput() {
  return TextFormField(
      decoration: const InputDecoration(
          //icon: Icon(Icons.lock),
          hintText: 'Contraseña',
          labelText: 'Contraseña',
          focusColor: Color(0xff5157CB)
      ),
  );
}

Widget _boton() {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff5157CB),        
          ),
        onPressed: () {},
        child: Container(
          height: 40,
          width: 280,
          child: const Text(
            "Entrar",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        )),
  );
}
