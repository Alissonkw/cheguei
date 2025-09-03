import 'package:tochegando_delivery_parceiros/features/rental_module/driver/domain/repositories/driver_repository_interface.dart';
import 'package:tochegando_delivery_parceiros/features/rental_module/driver/domain/services/driver_service_interface.dart';

class DriverService implements DriverServiceInterface{
  final DriverRepositoryInterface driverRepositoryInterface;
  DriverService({required this.driverRepositoryInterface});

}
