import 'package:flutter/material.dart';
import 'package:reune/app/pages/cursos/cursos_bloc.dart';
import 'package:reune/app/pages/cursos/cursos_detalhes_widget.dart';
import 'package:reune/app/pages/cursos/cursos_module.dart';
import 'package:reune/models/Curso.dart';

class CursosPage extends StatefulWidget {
  final String title;
  const CursosPage({Key key, this.title = "Cursos"}) : super(key: key);

  @override
  _CursosPageState createState() => _CursosPageState();
}

class _CursosPageState extends State<CursosPage> {

  CursosBloc cursoBloc = CursosModule.to.getBloc<CursosBloc>();

  @override
  void initState() {
    super.initState();
    cursoBloc.listarEventos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder<List<Curso>>(
        stream: cursoBloc.cursosOut,
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index){
              Curso curso = snapshot.data[index];
              return ListTile(
                title: Text(curso.titulo),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CursosDetalheWidget(curso)
                    )
                  );
                },
              );
            },
          );
        }
      ),
    );
  }
}
