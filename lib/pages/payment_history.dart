import 'package:flutter/material.dart';
import 'package:mobile_bank_ui/pages/dashboard.dart';
import '../widgets/color.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({super.key});

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Ink(
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: AppColor
                          .primaryBackground, // Background color of the rounded icon
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ), // Icon color
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Payment History",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ///////////////////////////////////////////////////
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(30), // Adjust the radius as needed
                child: Card(
                  color: AppColor.cardBackground,
                  elevation: 4.0,
                  margin: const EdgeInsets.all(8.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.credit_card,
                              size: 50.0,
                              color: Colors.green,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "09 Aug 2023 17:55:16",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Card Payment",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Successful",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(
                                  "NGN 69,000.00",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_right_outlined,
                              size: 30.0,
                              color: AppColor.darkText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
/////////////////////////////////////////////////////////////////////////
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(30), // Adjust the radius as needed
                child: Card(
                  color: AppColor.cardBackground,
                  elevation: 4.0,
                  margin: const EdgeInsets.all(8.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.business,
                              size: 50.0,
                              color: Colors.green,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "09 Aug 2023 17:55:16",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Bank Transfer",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Successful",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(
                                  "NGN 69,000.00",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_right_outlined,
                              size: 30.0,
                              color: AppColor.darkText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
////////////////////////////////////////////////////////
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(30), // Adjust the radius as needed
                child: Card(
                  color: AppColor.cardBackground,
                  elevation: 4.0,
                  margin: const EdgeInsets.all(8.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.credit_card,
                              size: 50.0,
                              color: Colors.green,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "09 Aug 2023 17:55:16",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Card Payment",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Failed",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  "NGN 69,000.00",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_right_outlined,
                              size: 30.0,
                              color: AppColor.darkText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              /////////////////////////////////////////////////////////////////////////
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(30), // Adjust the radius as needed
                child: Card(
                  color: AppColor.cardBackground,
                  elevation: 4.0,
                  margin: const EdgeInsets.all(8.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.business,
                              size: 50.0,
                              color: Colors.green,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "09 Aug 2023 17:55:16",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Bank Transfer",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Successful",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(
                                  "NGN 69,000.00",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_right_outlined,
                              size: 30.0,
                              color: AppColor.darkText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              /////////////////////////////////////////////////////////////////////////
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(30), // Adjust the radius as needed
                child: Card(
                  color: AppColor.cardBackground,
                  elevation: 4.0,
                  margin: const EdgeInsets.all(8.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.business,
                              size: 50.0,
                              color: Colors.green,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "09 Aug 2023 17:55:16",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Bank Transfer",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Successful",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(
                                  "NGN 69,000.00",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_right_outlined,
                              size: 30.0,
                              color: AppColor.darkText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
///////////////////////////////////////////////////////
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(30), // Adjust the radius as needed
                child: Card(
                  color: AppColor.cardBackground,
                  elevation: 4.0,
                  margin: const EdgeInsets.all(8.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.credit_card,
                              size: 50.0,
                              color: Colors.green,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "09 Aug 2023 17:55:16",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Card Payment",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Failed",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  "NGN 69,000.00",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_right_outlined,
                              size: 30.0,
                              color: AppColor.darkText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
/////////////////////////////////////////////////////////////////////////
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(30), // Adjust the radius as needed
                child: Card(
                  color: AppColor.cardBackground,
                  elevation: 4.0,
                  margin: const EdgeInsets.all(8.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.business,
                              size: 50.0,
                              color: Colors.green,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "09 Aug 2023 17:55:16",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Bank Transfer",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Successful",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(
                                  "NGN 69,000.00",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkText,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_right_outlined,
                              size: 30.0,
                              color: AppColor.darkText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
