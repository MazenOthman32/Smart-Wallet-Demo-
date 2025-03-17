import 'package:flosy/Balance.dart';
import 'package:flutter/material.dart';

import 'ResiptScreen.dart';
import 'ScanerScreen.dart';

class BalanceOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 36),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, David",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Your Balance is",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "4200egp",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/profile.png",
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/images/graph.png",
                  height: 150,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: _buildIconButton(
                      "invest",
                      "assets/images/invest.png",
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Balance(),
                          ));
                    },
                  ),
                  GestureDetector(
                    child: _buildIconButton(
                      "Receipt",
                      "assets/images/resipt.png",
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReceiptScannerApp(),
                          ));
                    },
                  ),
                  GestureDetector(
                    child: _buildIconButton("manual", "assets/images/scan.png"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ManualAddApp(),
                          ));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Image.asset(
                "assets/images/transactions.png",
                height: 120,
                width: double.infinity,
              ),
              const SizedBox(height: 30),
              Center(
                child: Text(
                  "See more ..",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(String label, String assetPath) {
    return Column(
      children: [
        Image.asset(assetPath, width: 40),
        const SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildExpenseItem(String title, String amount, String iconPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.asset(iconPath, width: 150),
          const SizedBox(width: 30),
          Expanded(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
