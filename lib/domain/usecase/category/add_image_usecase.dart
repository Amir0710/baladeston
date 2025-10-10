import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:baladeston/domain/repositories/category_repository.dart';

class AddImageUseCase {
  final CategoryRepository repository;

  AddImageUseCase( this.repository);


  Future<void> call(dynamic imageFile) {
    return repository.addImage( imageFile: imageFile);
  }
}
