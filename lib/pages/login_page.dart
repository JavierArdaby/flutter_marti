import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String id = "login_page";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(59, 131, 189, 1),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, //linea para cetrar el texto
            children: [
              Text(
                "Runn Marti",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Registrarse.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  Text('Iniciar Sesion.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              _textFieldNomebre(),
              SizedBox(
                height: 10.0,
              ),
              _textFieldEmail(),
              SizedBox(
                height: 10.0,
              ),
              _textFieldPassword(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldNomebre() {
    return _textFieldGeneral(
      labeltext: 'Nombre',
      hintText: 'Nombre completo',
      onChanged: (value) {},
      keyboardtype: TextInputType.name,
      icon: Icons.person_outline,
    );
  }

  Widget _textFieldEmail() {
    return _textFieldGeneral(
      labeltext: 'Email',
      hintText: 'ejemplo@ejemplo.com',
      onChanged: (value) {},
      keyboardtype: TextInputType.emailAddress,
      icon: Icons.email_outlined,
    );
  }

  Widget _textFieldPassword() {
    return _textFieldGeneral(
        labeltext: 'Password',
        hintText: '',
        onChanged: (value) {},
        keyboardtype: TextInputType.visiblePassword,
        icon: Icons.lock_clock_rounded);
  }
}

class _textFieldGeneral extends StatelessWidget {
  final String labeltext;
  final String hintText;
  final Function onChanged;
  final TextInputType keyboardtype;
  final IconData icon;
  const _textFieldGeneral({
    required this.labeltext,
    required this.hintText,
    required this.onChanged,
    required this.keyboardtype,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        keyboardType: keyboardtype,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          labelText: labeltext,
          hintText: hintText,
        ),
        onChanged: (value) {},
      ),
    );
  }
}
