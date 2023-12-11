import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Define the width percentages for the navigation items
    final itemWidthPercentage = screenWidth / 5;

    return Container(
      width: screenWidth,
      height: 64,
      child: Stack(
        children: [
          Container(
            width: screenWidth,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x29000000),
                  blurRadius: 1.50,
                  offset: Offset(0, -1),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NavItem(
                  icon: Icons.home,
                  label: 'Home',
                  isActive: true,
                  width: itemWidthPercentage,
                ),
                NavItem(
                  icon: Icons.favorite,
                  label: 'My Health',
                  isActive: false,
                  width: itemWidthPercentage,
                ),
                NavItem(
                  icon: Icons.warning,
                  label: 'Emergency',
                  isActive: false,
                  width: itemWidthPercentage,
                ),
                NavItem(
                  icon: Icons.local_pharmacy,
                  label: 'Pharmacy',
                  isActive: false,
                  width: itemWidthPercentage,
                ),
                NavItem(
                  icon: Icons.person,
                  label: 'Profile',
                  isActive: false,
                  width: itemWidthPercentage,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final double width;

  NavItem({required this.icon, required this.label, required this.isActive, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 44,
      child: Column(
        children: [
          Container(
            width: width * 0.8,
            height: 22,
            child: Icon(
              icon,
              color: isActive ? Color(0xFFF83D5B) : Color(0xFFFFACBC),
              size: 22,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isActive ? Color(0xFF0D0D0D) : Color(0xFFFFACBC),
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0.21,
            ),
          ),
        ],
      ),
    );
  }
}
