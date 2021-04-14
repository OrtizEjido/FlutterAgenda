
import 'package:stacked/stacked.dart';

import '../../Evento.dart';

class HomeViewModel extends BaseViewModel{

  final List<Evento> _eventos = [
    Evento(name: "Examen Carlos", description: "Estudiar"),
    Evento(name: "Cubo de Leds", description: "Hacer un cubo de leds para VeroZZZ"),
  ];

  List<Evento> get eventos => _eventos;

}