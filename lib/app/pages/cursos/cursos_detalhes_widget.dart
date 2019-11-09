import 'package:flutter/material.dart';
import 'package:reune/models/Curso.dart';

class CursosDetalheWidget extends StatelessWidget {

  final Curso curso;

  const CursosDetalheWidget(this.curso);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(curso.titulo),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Image.network("http://cursos.reunecursos.com.br/" + curso.banner.path),
            Text(curso.subTitulo),
            Container(
              padding: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: <Widget>[
                  Text("fasd"),
                  Text("data")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}