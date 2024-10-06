import '../database/db_helper.dart';
import '../providers/accounting_provider.dart';

class AccountingService {
  final DBHelper dbHelper = DBHelper();

  Future<void> addTransaction(String id, double amount, String description, DateTime date) async {
    await dbHelper.insertTransaction(id, amount, description, date.toIso8601String());
  }

  Future<List<Transaction>> getTransactions() async {
    final data = await dbHelper.fetchTransactions();
    return data.map((item) => Transaction(
      id: item['id'],
      amount: item['amount'],
      description: item['description'],
      date: DateTime.parse(item['date']),
    )).toList();
  }

  Future<void> removeTransaction(String id) async {
    await dbHelper.deleteTransaction(id);
  }
}
