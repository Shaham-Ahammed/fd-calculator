// ignore_for_file: avoid_print
import 'package:fd_calculator/home.dart';

double? amount;
double? interestRate;
int? months;
String? totalAmount;

void calculateInterest(double amount, double interestRate, int months) {
  double interestPerMonth = interestRate / 12.0;
  double interest = amount * (months * interestPerMonth) / 100;
  double total = amount + interest;
  String formattedInterest = interest.toStringAsFixed(2);
  String formattedTotal = total.toStringAsFixed(2);
  totalAmounts.value = formattedTotal;
  totalInterestRate.value = formattedInterest;
  print("Interest amount is $formattedInterest");
  print("Total amount is $formattedTotal");
}
