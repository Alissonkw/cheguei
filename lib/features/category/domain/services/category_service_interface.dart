import 'package:tochegando_delivery_parceiros/features/category/domain/models/category_model.dart';
import 'package:tochegando_delivery_parceiros/features/store/domain/models/item_model.dart';

abstract class CategoryServiceInterface {
  Future<List<CategoryModel>?> getCategoryList();
  Future<List<CategoryModel>?> getSubCategoryList(int? parentID);
  int? categoryIndex(List<CategoryModel>? categoryList, Item? item);
  int? subCategoryIndex(List<CategoryModel>? subCategoryList, Item? item);
  Future<ItemModel?> getSubCategoryItemList(String offset, int subCategoryId);
}
