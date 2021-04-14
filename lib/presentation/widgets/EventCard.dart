import 'package:flutter/material.dart';

import '../../Evento.dart';

class EventCard extends StatelessWidget{

  EventCard({
    this.evento,
    this.fun    
  });

  final Evento evento;
  final Function fun;

  @override
  Widget build(BuildContext context) {    
    return GestureDetector(
      onTap: () {
        fun();
      },
      child: Card(
        child: Column(
          children: [
            Text(evento.name, style: TextStyle (fontWeight: FontWeight.bold, fontSize: 16),),
            Text(evento.description)
          ]
        )
      ),
    );
  } 
}