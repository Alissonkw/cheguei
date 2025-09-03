import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tochegando_delivery_parceiros/common/widgets/custom_app_bar_widget.dart';
import 'package:tochegando_delivery_parceiros/features/reports/widgets/report_card_widget.dart';
import 'package:tochegando_delivery_parceiros/helper/route_helper.dart';
import 'package:tochegando_delivery_parceiros/util/dimensions.dart';
import 'package:tochegando_delivery_parceiros/util/images.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: 'reports'.tr),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
        child: Column(children: [

          ReportCardWidget(
            title: 'expense_report'.tr,
            subtitle: 'view_and_track_your_business_expenses_in_detail'.tr,
            image: Images.expense,
            onTap: () => Get.toNamed(RouteHelper.getExpenseRoute()),
          ),
          const SizedBox(height: Dimensions.paddingSizeDefault),

          ReportCardWidget(
            title: 'tax_report'.tr,
            subtitle: 'view_detailed_tax_calculations_and_payment_records'.tr,
            image: Images.taxReportIcon,
            onTap: () => Get.toNamed(RouteHelper.getTaxReportRoute()),
          ),

        ]),
      ),
    );
  }
}
