import 'package:flutter/material.dart';
import 'package:malfa/pages/about.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight * 0.25; 

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Spacer(flex: 1),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/splash/logo.png',
                      height: imageHeight,
                      fit: BoxFit.contain,
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'مرحباً بك في ملفَى',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF256049),
                      ),
                    ),

                    const SizedBox(height: 6),

                    const Text(
                      ' يُفال " فلان ملفى العرب " أي وجهتهم ومكان اجتماعهم \n'
                      ' وتطبيقنا هنا ملفى لكم ، يجمع المناطق التاريخية \n'
                      'ويقربكم من جذوركم ، ليكون وجهتكم لمعرفة تاريخ الدولة'
                      'السعودبة منذ التأسيس',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 70), 

                /// زر ابدأ الآن
                  SizedBox(
                  width: 200,
                  height: 48,
                  child: ElevatedButton(
                     onPressed: () {
                     Navigator.pushReplacement(
                       context,
                    MaterialPageRoute(
                       builder: (context) => const AboutUsPage(),
                    ),
                      );
                      },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: const Color(0xFFC29C5F),
                     foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      elevation: 6, 
                     shadowColor: const Color.fromARGB(255, 255, 255, 255).withValues(alpha: 0.3),
                     side: const BorderSide(
                    color: Color.fromARGB(255, 99, 69, 28), 
                    width: 2,
                     ),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20), 
                     ),
                       ),
                         child: const Text(
                        'ابدأ الآن',
                    style: TextStyle(
                     fontSize: 18,
                    fontWeight: FontWeight.w600,
                       letterSpacing: 1,
                        ),
                      ),
                  ),
                  ),

                const Spacer(flex: 1), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
