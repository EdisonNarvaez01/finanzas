import 'package:get/get.dart';

class BudgetController extends GetxController {
  RxDouble budgetAmount = 0.0.obs;

  void setBudget(double amount) {
    budgetAmount.value = amount;
  }

  bool isBudgetExceeded(double expense) {
    return expense > budgetAmount.value;
  }
}
