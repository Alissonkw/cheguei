import 'package:get/get.dart';
import 'package:tochegando_delivery_parceiros/features/rental_module/coupon/domain/services/taxi_coupon_service_interface.dart';

class TaxiCouponController extends GetxController implements GetxService {
  final TaxiCouponServiceInterface taxiCouponServiceInterface;
  TaxiCouponController({required this.taxiCouponServiceInterface});

}
