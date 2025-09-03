import 'package:tochegando_delivery_parceiros/features/store/domain/models/item_model.dart';
import 'package:tochegando_delivery_parceiros/interface/repository_interface.dart';

abstract class CategoryRepositoryInterface implements RepositoryInterface {
  Future<dynamic> getSubCategoryList(int? parentID);
  Future<ItemModel?> getSubCategoryItemList(String offset, int subCategoryId);
}
