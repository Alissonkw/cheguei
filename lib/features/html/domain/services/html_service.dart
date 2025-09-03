import 'package:get/get.dart';
import 'package:tochegando_delivery_parceiros/features/html/domain/repositories/html_repository_interface.dart';
import 'package:tochegando_delivery_parceiros/features/html/domain/services/html_service_interface.dart';

class HtmlService implements HtmlServiceInterface {
  final HtmlRepositoryInterface htmlRepositoryInterface;
  HtmlService({required this.htmlRepositoryInterface});

  @override
  Future<Response> getHtmlText(bool isPrivacyPolicy) async {
    return await htmlRepositoryInterface.getHtmlText(isPrivacyPolicy);
  }

}
