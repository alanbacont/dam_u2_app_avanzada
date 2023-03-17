import 'package:dam_u2_app_avanzada/mapa.dart';
import 'package:dam_u2_app_avanzada/paginainicio.dart';
import 'package:dam_u2_app_avanzada/perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _indice = 0;

  final List<Widget> _paginas = [
    PaginaInicio(),
    PaginaMapa(),
    PaginaPerfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/logonay.png', height: 40,),
            const SizedBox(width: 8,),
            const Text(
              "Turis-NAY",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('¿Salir de la aplicación?'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text('No'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                      SystemNavigator.pop();
                    },
                    child: Text('Sí'),
                  ),
                ],
              ),
            );
          }, icon: Icon(Icons.exit_to_app_rounded))
        ],
        backgroundColor: Colors.pink[800],
        centerTitle: true,
      ),
      body: _paginas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink[800],
        selectedFontSize: 18,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedIconTheme: IconThemeData(
          size: 30
        ),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Inicio',),
          BottomNavigationBarItem(icon: Icon(Icons.map_rounded), label: 'Lugares',),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: 'Perfil',),
        ],
        currentIndex: _indice,
        onTap: (int index) {
          setState(() {
            _indice = index;
          });
        },
      ),
    );
  }
}
