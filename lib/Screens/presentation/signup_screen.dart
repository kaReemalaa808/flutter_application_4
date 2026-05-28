import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/Core/app_coloer.dart';
import 'account_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Center(
              child: SvgPicture.asset(
                'assets/images/Group.svg',
                color: AppColors.secondaryColor,
              ),
            ),
            SizedBox(height: 80),
            Text(
              'Sign up',
              style: GoogleFonts.gabarito(
                fontSize: 30,
                color: AppColors.textColor2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Create your account',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.textColor2.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'email@eraaSoft.com',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Container(
              child: Text(
                'By continuing you agree to our Terms of Service and Privacy Policy.',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: AppColors.textColor2,
                ),
              ),
              alignment: Alignment.centerRight,
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountScreen()),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.textColor1,
                  fixedSize: Size(364, 67),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Already have an account? Singup',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: AppColors.textColor2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
