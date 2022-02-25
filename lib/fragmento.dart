import 'package:biblioteca_disenio/ajustes.dart';
import 'package:biblioteca_disenio/librosfav.dart';
import 'package:biblioteca_disenio/librosguardados.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fragmento extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final nombre = 'Abigail Chávez';
    final email = 'abyie16@gmail.com';
    final urlImage =
        'https://www.zbzcml.net/uploads/342244d6df45d29ad5ef1b5ffd31e9da.jpg';

    return Drawer(
      child: Material(
        color: Color(0xFFE3DDD3),
        child: ListView(
          children: <Widget>[
            perfil(urlImage: urlImage, nombre: nombre, email: email),
            Container(
              padding: padding,
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  activity(text: 'Libros guardados', icon: Icons.book, onClicked: () => itemSeleccionado(context, 0)),
                  SizedBox(
                    height: 16,
                  ),
                  activity(text: 'Libros favoritos', icon: Icons.favorite, onClicked: () => itemSeleccionado(context, 1)),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.white70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  activity(text: 'Ajustes', icon: Icons.settings, onClicked: () => itemSeleccionado(context, 2))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Widget para fragment: UI perfil.
  Widget perfil(
          {required String urlImage,
          required String nombre,
          required String email}) =>
      InkWell(
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(urlImage),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nombre,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color(0XFFE3DDD3),
                child: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      );

  //Widget para fragment: Listtile.
  Widget activity({required String text, required IconData icon, VoidCallback? onClicked}) {
    final color = Colors.white;
    final color2 = Colors.white70;
    
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: color2,
      onTap: onClicked //Redirecciona a nuevo activity.
    );
  }

  //Método onClicked: Muestra el activity del item seleccionado.
  void itemSeleccionado(BuildContext context, int i) {
    switch(i){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Librosguardados()));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Librosfav()));
          break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Ajustes()));
          break;
    }
  }
}
