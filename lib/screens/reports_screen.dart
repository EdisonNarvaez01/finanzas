import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/reports_controller.dart';

class ReportsScreen extends StatelessWidget {
  final ReportsController reportsController = Get.put(ReportsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generar Informes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                reportsController.addExpense('Alimentación', 100.0);
              },
              child: Text('Agregar Gasto'),
            ),
            SizedBox(height: 20),
            Obx(() {
              return Text('Gasto Total en Alimentación: \$${reportsController.getCategoryTotalExpense('Alimentación')}');
            }),
            SizedBox(height: 20),
            Obx(() {
              return Text('Gasto Total: \$${reportsController.getTotalExpense()}');
            }),
          ],
        ),
      ),
    );
  }
}
