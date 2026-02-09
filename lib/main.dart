/* import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Text('Malfa App'))),
    );
  }
}
*/

import 'package:flutter/material.dart';
// استيراد صفحة التفاصيل التي قمتِ بإنشائها
import 'package:malfa/pages/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'تجربة صفحات المناطق',
      theme: ThemeData(
        fontFamily: 'Cairo', // تأكدي من تعريف الخط في pubspec.yaml
        useMaterial3: true,
      ),
      home: const TestMenuPage(),
    );
  }
}

class TestMenuPage extends StatelessWidget {
  const TestMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة المناطق الخمس
    final List<String> regions = [
      'الجنوبية',
      'الشمالية',
      'الوسطى',
      'الغربية',
      'الشرقية',
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5EFE6), // خلفية كريمية هادئة
      appBar: AppBar(
        title: const Text('لوحة تجربة المناطق'),
        centerTitle: true,
        backgroundColor: const Color(0xFF70563B),
        foregroundColor: Colors.white,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.map_outlined,
                  size: 80,
                  color: Color(0xFF70563B),
                ),
                const SizedBox(height: 20),
                const Text(
                  "اختاري منطقة لاستعراض صفحة الـ Details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 40),

                // إنشاء الأزرار بشكل تلقائي
                ...regions
                    .map(
                      (region) => Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF70563B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 5,
                            ),
                            onPressed: () {
                              // الانتقال لصفحة التفاصيل وتمرير اسم المنطقة
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage(regionName: region),
                                ),
                              );
                            },
                            child: Text(
                              "تفاصيل المنطقة $region",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),

                const SizedBox(height: 20),
                const Text(
                  "تأكدي من ظهور الصور والنصوص بشكل صحيح",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
