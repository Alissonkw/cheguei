import 'package:tochegando_delivery_parceiros/features/addon/models/addon_category_model.dart';
import 'package:tochegando_delivery_parceiros/features/store/domain/models/item_model.dart';
import 'package:tochegando_delivery_parceiros/interface/repository_interface.dart';

abstract class AddonRepositoryInterface<T> extends RepositoryInterface<AddOns> {
  Future<List<AddonCategoryModel>?> getAddonCategory({required int moduleId});
  Future<bool> updateAddon(AddOns addonModel);
}
