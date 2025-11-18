import 'package:baladeston/domain/entitys/theme/theme_entity.dart';
import 'package:baladeston/domain/filters/theme_query_filter.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart';
import 'package:flutter/cupertino.dart';

class GetAllThemesUseCase {
  final ThemeRepository repository;

  GetAllThemesUseCase( this.repository);


  Future<List<ThemeEntity>?> call({required ThemeQueryFilter filter }) {
    return repository.getAllThemes(filter : filter );
  }
}
