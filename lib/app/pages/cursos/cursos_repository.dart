import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:reune/models/Curso.dart';

class CursosRepository extends Disposable {
  
  Future<List<Curso>> listaEventos() async {
    Response response = await Dio().get("http://cursos.reunecursos.com.br/api/eventos");
    return (response.data['eventos'] as List).map((item) => Curso.fromJson(item)).toList();
  }

  Future<Curso> bySlug(String slug) async {
    Response response = await Dio().get("http://cursos.reunecursos.com.br/api/eventos/$slug");
    return Curso.fromJson(response.data['evento']);
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
