import 'package:flutter/material.dart';

const recentActivities = [
  {
    "icon": 'asset/drop.svg',
    "label": 'Water Bill',
    "amount": "\$120"
  },
  {
    "icon": 'asset/salary.svg',
    "label": 'Income Salary',
    "amount": "\$4500"
  },
  {
    "icon": 'asset/electricity.svg',
    "label": 'Electric Bill',
    "amount": "\$150"
  },
  {
    "icon": 'asset/wifi.svg',
    "label": 'Internet Bill',
    "amount": "\$60"
  },
];

const upcomingPayments = [
  {
    "icon": 'asset/home.svg',
    "label": 'Home Rent',
    "amount": "\$1500"
  },
  {
    "icon": 'asset/salary.svg',
    "label": 'Car Insurance',
    "amount": "\$150"
  },
];

const transactionHistory = [
  {
    "avatar": 'https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859',
    "label": 'Car Insurance',
    "amount": "\$350",
    "time": "10:42:23 AM",
    "status": "Completed",
  },
  {
    "avatar": 'https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859',
    "label": 'Loan',
    "amount": "\$350",
    "time": "12:42:00 PM",
    "status": "Completed",
  },
  {
    "avatar": 'https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859',
    "label": 'Online Payment',
    "amount": "\$154",
    "time": "10:42:23 PM",
    "status": "Completed",
  },
];
// const List<String> menuIcons = [
//   'assets/dashoboard/home.svg',
//   'assets/dashoboard/pie-chart.svg',
//   'assets/dashoboard/clipboard.svg',
//   'assets/dashoboard/credit-card.svg',
//   'assets/dashoboard/trophy.svg',
//   'assets/dashoboard/invoice.svg',
// ];
// const List<IconData> menuIcons = [
//   Icons.home,
//   Icons.pie_chart,
//   Icons.clipboard,
//   Icons.credit_card,
//   Icons.emoji_events, // trophy equivalent
//   Icons.receipt, // invoice equivalent
// ];

const  menuIcons = [
  'asset/home.svg',
  'asset/pie-chart.svg',
  'asset/clipboard.svg',
  'asset/credit-card.svg',
  'asset/trophy.svg',
  'asset/invoice.svg',
];

class InfoCardModel {
  final String icon;
  final String label;
  final String amount;

  InfoCardModel({
    required this.icon,
    required this.label,
    required this.amount,
  });
}
final List<InfoCardModel> infoCardData = [
  InfoCardModel(
    icon: 'asset/credit-card.svg',
    label: 'Transfer via \nCard number',
    amount: '\$1200',
  ),
  InfoCardModel(
    icon: 'asset/transfer.svg',
    label: 'Transfer via \nOnline Banks',
    amount: '\$150',
  ),
  InfoCardModel(
    icon: 'asset/bank.svg',
    label: 'Transfer \nSame Bank',
    amount: '\$1500',
  ),
  InfoCardModel(
    icon: 'asset/drop.svg',
    label: 'Transfer to \nOther Bank',
    amount: '\$1500',
  ),
];