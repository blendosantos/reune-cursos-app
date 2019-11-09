import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:reune/app/pages/cursos/cursos_repository.dart';
import 'package:reune/app/pages/cursos/palestrantes_repository.dart';
import 'package:reune/models/Curso.dart';
import 'package:rxdart/rxdart.dart';

class CursosBloc extends BlocBase {
  
  final CursosRepository cursosRepository;
  final PalestrantesRepository palestrantesRepository;
  CursosBloc(this.cursosRepository, this.palestrantesRepository);

  final cursosController = BehaviorSubject<List<Curso>>();
  Stream<List<Curso>> get cursosOut => cursosController.stream;
  
  void listarEventos() async {
    cursosController.add(await cursosRepository.listaEventos());
  }
  
  @override
  void dispose() {
    super.dispose();
    cursosController.close();
  }
}
