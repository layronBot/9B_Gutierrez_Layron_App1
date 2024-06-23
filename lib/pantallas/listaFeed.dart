import 'package:flutter/material.dart';
import 'package:flutter_application_3/datos/datos.dart';
import 'package:flutter_application_3/pantallas/pantallaPrincipal.dart';
import 'package:flutter_application_3/widgets/socialmediapost.dart';
import 'package:flutter_application_3/widgets/TarjetaCard.dart';

class listaFeed extends StatelessWidget {
  const listaFeed({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ListaCard.length,
      itemBuilder: (context, index) {
        return tarjetacard(tarjeta: ListaCard[index]);
      },
    );
  }
}