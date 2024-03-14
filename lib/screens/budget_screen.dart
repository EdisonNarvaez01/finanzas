import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/budget_controller.dart';

class BudgetScreen extends StatelessWidget {
  final BudgetController budgetController = Get.put(BudgetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestión de Presupuestos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                budgetController.setBudget(500.0);
              },
              child: Text('Establecer Presupuesto'),
            ),
            SizedBox(height: 20),
            Obx(() {
              return Text('Presupuesto Actual: \$${budgetController.budgetAmount}');
            }),
          ],
        ),
      ),
    );
  }
}
