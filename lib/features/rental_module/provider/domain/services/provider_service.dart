import 'package:tochegando_delivery_parceiros/features/rental_module/provider/domain/repositories/provider_repository_interface.dart';
import 'package:tochegando_delivery_parceiros/features/rental_module/provider/domain/services/provider_service_interface.dart';

class ProviderService implements ProviderServiceInterface {
  final ProviderRepositoryInterface providerRepositoryInterface;
  ProviderService({required this.providerRepositoryInterface});

}
