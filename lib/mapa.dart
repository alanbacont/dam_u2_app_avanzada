import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class PaginaMapa extends StatefulWidget {
  const PaginaMapa({Key? key}) : super(key: key);

  @override
  _PaginaMapaState createState() => _PaginaMapaState();
}

class _PaginaMapaState extends State<PaginaMapa> {
  final MapController _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa Nayarit'),
        backgroundColor: Colors.white10,
      ),
      body: FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          center: LatLng(21.508342, -104.895672),
          zoom: 12.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
        ],
      ),
    );
  }
}
