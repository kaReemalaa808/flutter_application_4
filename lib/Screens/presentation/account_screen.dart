import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/Core/app_coloer.dart';
import 'login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                radius: 27,
                child: CircleAvatar(
                  radius: 27,
                  backgroundImage: Image.asset(
                    'assets/images/wp12245344.webp',
                  ).image,
                ),
              ),
            ),
            SizedBox(width: 15),
            Center(
              child: Text(
                'Haaland',
                style: GoogleFonts.gabarito(
                  fontSize: 18,
                  color: AppColors.textColor2,
                ),
              ),
            ),
            Center(
              child: Text(
                'haaland@nectar.com',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColors.textColor2.withOpacity(0.7),
                ),
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Orders'),
              trailing: Icon(Icons.arrow_forward_ios),
              tileColor: AppColors.primaryColor.withOpacity(0.1),
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('My Details'),
              trailing: Icon(Icons.arrow_forward_ios),
              tileColor: AppColors.primaryColor.withOpacity(0.1),
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Delivery Addresses'),
              trailing: Icon(Icons.arrow_forward_ios),
              tileColor: AppColors.primaryColor.withOpacity(0.1),
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text('Promo Cord'),
              trailing: Icon(Icons.arrow_forward_ios),
              tileColor: AppColors.primaryColor.withOpacity(0.1),
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              trailing: Icon(Icons.arrow_forward_ios),
              tileColor: AppColors.primaryColor.withOpacity(0.1),
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              trailing: Icon(Icons.arrow_forward_ios),
              tileColor: AppColors.primaryColor.withOpacity(0.1),
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              trailing: Icon(Icons.arrow_forward_ios),
              tileColor: AppColors.primaryColor.withOpacity(0.1),
            ),
            SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              icon: Icon(Icons.logout, color: AppColors.primaryColor),
              label: Text(
                'Log Out',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.backgroundColor,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
