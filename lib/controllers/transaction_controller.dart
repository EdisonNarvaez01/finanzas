import 'package:get/get.dart';

class Transaction {
  final String title;
  final double amount;

  Transaction(this.title, this.amount);
}

class TransactionController extends GetxController {
  RxList<Transaction> transactions = RxList<Transaction>();

  void addTransaction(String title, double amount) {
    transactions.add(Transaction(title, amount));
  }

  double getTotalAmount() {
    double total = 0.0;
    transactions.forEach((transaction) {
      total += transaction.amount;
    });
    return total;
  }
}
