import 'package:equatable/equatable.dart';

class Evento extends Equatable{


  Evento({
    this.name,
    this.description
  });

  final String name;
  final String description;



  @override
  // TODO: implement props
  List<Object> get props => [name, description];

}