import 'package:reune/app/pages/cursos/palestrantes_repository.dart';
import 'package:reune/app/pages/cursos/cursos_repository.dart';
import 'package:reune/app/pages/cursos/cursos_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:reune/app/pages/cursos/cursos_page.dart';

class CursosModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => CursosBloc(
          CursosModule.to.getDependency<CursosRepository>(),
          CursosModule.to.getDependency<PalestrantesRepository>()
          )),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => PalestrantesRepository()),
        Dependency((i) => CursosRepository()),
      ];

  @override
  Widget get view => CursosPage();

  static Inject get to => Inject<CursosModule>.of();
}
