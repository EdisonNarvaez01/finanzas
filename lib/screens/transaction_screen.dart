import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/transaction_controller.dart';

class TransactionScreen extends StatelessWidget {
  final TransactionController transactionController =
      Get.put(TransactionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar Transacción'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                transactionController.addTransaction('Compra', 50.0);
              },
              child: Text('Agregar Transacción'),
            ),
            SizedBox(height: 20),
            Obx(() => Text('Total de Gastos: \$${transactionController.getTotalAmount()}')),
          ],
        ),
      ),
    );
  }
}
