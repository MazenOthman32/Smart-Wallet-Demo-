import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                        "Your Balance is 4200egp",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Image.asset("assets/images/profile.png", width: 40),
                ],
              ),
              const SizedBox(height: 20),
              _buildExpenseItem("Amazon", "200", "assets/images/amaz.png"),
              _buildExpenseItem("Seoudi", "70", "assets/images/seodi.png"),
              _buildExpenseItem("Kazyoun", "800", "assets/images/kaz.png"),
              _buildExpenseItem("Pizza Hut", "220", "assets/images/pizza.png"),
              const SizedBox(height: 10),
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 250,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpenseItem(String title, String amount, String iconPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Image.asset(iconPath, width: 150),
          const SizedBox(width: 40),
          Expanded(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
