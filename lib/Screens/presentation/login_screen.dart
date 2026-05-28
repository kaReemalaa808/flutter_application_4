import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/Core/app_coloer.dart';
import 'signup_screen.dart';
import 'account_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void opensingupscreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignupScreen()),
    );
  }

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
            SizedBox(height: 100),
            Text(
              'Log in',
              style: GoogleFonts.gabarito(
                fontSize: 30,
                color: AppColors.textColor2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Enter your emails and password',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.textColor2.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'email@nectar.com',
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
                'Forgot your password?',
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
                  'Login',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: AppColors.textColor2,
                  ),
                ),
                GestureDetector(
                  onTap: () => opensingupscreen(context),
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
