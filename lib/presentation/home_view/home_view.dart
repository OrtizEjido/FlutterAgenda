import 'package:agenda/presentation/widgets/EventCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewModel.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
   
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, HomeViewModel model, child) => Scaffold(
        appBar: AppBar(
          title: Text("Eventos"),
        ),
        body: ListView.builder(
          itemCount: model.eventos.length,
          itemBuilder: (BuildContext context, int index) {
            final evento = model.eventos[index];
            return EventCard(
              evento: evento, 
              fun: (){
                showDialog(
                  context: context,
                  child: Center(child: Text("Hola"))
                );
              },
            );
          },  
        ),
      ),
      
    );
  }  
}