import 'package:baladeston/domain/category/entity/category_entity.dart';

class CreateCategoryUsecaseBusinessRule {
  final CategoryEntity category;
  CreateCategoryUsecaseBusinessRule({required this.category});

  void validate() {
    /// NEED  // i most add validation with exception
  }
}
