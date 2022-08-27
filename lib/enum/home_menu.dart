import 'package:flutter/cupertino.dart';

import '../styles/AppText.dart';

enum HomeMenu {
  //top menu
  SEND_MONEY('Send Money', 'assets/send_money.png', Text(AppText.placeholder)),
  MOBILE_RECHARGE('Mobile Recharge', 'assets/recharge.png', Text(AppText.placeholder)),
  CASH_OUT('Cash Out', 'assets/cash_out.png', Text(AppText.placeholder)),
  PAYMENT('Make Payment', 'assets/payment.png', Text(AppText.placeholder)),

  PAY_BILL('Pay Bill', 'assets/pay_bill.png', Text(AppText.placeholder)),
  ADD_MONEY('Add Money', 'assets/add_money.png', Text(AppText.placeholder)),
  REQUEST_MONEY('Request Money', 'assets/request_money.png', Text(AppText.placeholder)),
  FUND_TRANSFER('Fund Transfer', 'assets/fund_transfer.png', Text(AppText.placeholder)),

  TRAFFIC_FINE('Traffic Fine', 'assets/fund_transfer.png', Text(AppText.placeholder)),
  INDIAN_VISA('Indian Visa', 'assets/indian_visa.png', Text(AppText.placeholder)),
  TICKET('Ticket', 'assets/fund_transfer.png', Text(AppText.placeholder)),
  HOTEL('Hotel', 'assets/fund_transfer.png', Text(AppText.placeholder)),

  ZAKAT('Traffic Fine', 'assets/fund_transfer.png', Text(AppText.placeholder)),
  DONATION('Indian Visa', 'assets/indian_visa.png', Text(AppText.placeholder)),
  GOVT_PAY('Ticket', 'assets/fund_transfer.png', Text(AppText.placeholder)),
  INSURANCE('Hotel', 'assets/fund_transfer.png', Text(AppText.placeholder)),


  MORE('More', 'assets/payment.png', Text(AppText.placeholder));


  final String title;
  final String icon;
  final Widget widget;

  const HomeMenu(this.title, this.icon, this.widget);
}