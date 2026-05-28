import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Core/app_coloer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_screen.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/onbording.png', fit: BoxFit.cover),
          Column(
            children: [
              SizedBox(height: 450),
              SvgPicture.asset('assets/images/Group.svg'),
              Text(
                'Welcome \nto our store',
                style: GoogleFonts.gabarito(
                  fontSize: 30,
                  color: AppColors.textColor1,
                ),
              ),
              SizedBox(height: 18),

              Text(
                'Get your groceries in as fast as one hour',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColors.textColor1.withOpacity(0.7),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  'Get Started',
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.textColor1,
                  fixedSize: Size(353, 64),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
