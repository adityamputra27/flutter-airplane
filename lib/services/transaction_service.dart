import 'package:airplane/models/transaction_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionService {
  final CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transactionModel) async {
    try {
      _transactionReference.add({
        'destination': transactionModel.destination.toJson(),
        'amountOfTraveler': transactionModel.amountOfTraveler,
        'selectedSeats': transactionModel.selectedSeats,
        'insurance': transactionModel.insurance,
        'refundable': transactionModel.refundable,
        'vat': transactionModel.vat,
        'price': transactionModel.price,
        'grandTotal': transactionModel.grandTotal,
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<List<TransactionModel>> fetchTransactions() async {
    try {
      QuerySnapshot result = await _transactionReference.get();

      List<TransactionModel> transactions = result.docs.map((e) {
        {
          return TransactionModel.fromJson(
              e.id, e.data() as Map<String, dynamic>);
        }
      }).toList();

      return transactions;
    } catch (e) {
      rethrow;
    }
  }
}
