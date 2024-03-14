import 'package:get/get.dart';

class ReportsController extends GetxController {
  RxMap categoryExpenses = {}.obs;

  void addExpense(String category, double amount) {
    
    categoryExpenses[category] ??= 0.0;
    categoryExpenses[category] += amount;
  }

  void removeExpense(String category, double amount) {
    if (categoryExpenses.containsKey(category)) {
      categoryExpenses[category] -= amount;
      if (categoryExpenses[category]! <= 0) {
        categoryExpenses.remove(category);
      }
    }
  }

  double getCategoryTotalExpense(String category) {
    return categoryExpenses.containsKey(category) ? categoryExpenses[category]! : 0.0;
  }

  double getTotalExpense() {
    double total = 0.0;
    categoryExpenses.forEach((category, amount) {
      total += amount!;
    });
    return total;
  }
}
