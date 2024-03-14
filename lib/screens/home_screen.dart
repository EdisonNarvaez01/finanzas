import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'transaction_screen.dart';
import 'budget_screen.dart';
import 'reports_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finanzas Personales'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(TransactionScreen());
              },
              child: Text('Registrar Transacción'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(BudgetScreen());
              },
              child: Text('Gestión de Presupuestos'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(ReportsScreen());
              },
              child: Text('Generar Informes'),
            ),
          ],
        ),
      ),
    );
  }
}