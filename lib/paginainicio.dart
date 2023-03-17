import 'package:dam_u2_app_avanzada/mapa.dart';
import 'package:flutter/material.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Bienvenidos a Turis-NAY',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Image.asset(
          'assets/nay.png',
          width: 250,
          height: 250,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20),
        const Text(
          'Descubre todo lo que Nayarit tiene para ofrecer, desde playas y montañas hasta rica cultura y gastronomía. ¡Explora Turis-NAY ahora!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaginaMapa()),
            );
          },
          child: const Text('Explorar'),
        ),
      ],
    );
  }
}
