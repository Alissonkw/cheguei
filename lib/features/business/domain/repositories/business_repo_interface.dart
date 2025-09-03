import 'package:get/get_connect/connect.dart';
import 'package:tochegando_delivery_parceiros/features/business/domain/models/business_plan_body.dart';
import 'package:tochegando_delivery_parceiros/interface/repository_interface.dart';

abstract class BusinessRepoInterface<T> implements RepositoryInterface<T> {
  Future<Response> setUpBusinessPlan(BusinessPlanBody businessPlanBody);
}
