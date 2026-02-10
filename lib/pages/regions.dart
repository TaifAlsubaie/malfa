import 'package:flutter/material.dart';
//import 'details.dart';

class RegionsPage extends StatefulWidget {
  @override
  State<RegionsPage> createState() => _RegionsPageState();
}

final List<Map<String, String>> regions = [
  {
    "name": "المنطقة الوسطى",
    "image": "assets/images/regions/Central.png",
    "desc": "قلب المملكة · تاريخ وحضارة",
  },
  {
    "name": "المنطقة الشمالية",
    "image": "assets/images/regions/Northern.png",
    "desc": "إرث قديم · بوابة الشمال",
  },
  {
    "name": "المنطقة الشرقية",
    "image": "assets/images/regions/Eastern.png",
    "desc": "ساحل · اقتصاد · تنوع",
  },
  {
    "name": "المنطقة الغربية",
    "image": "assets/images/regions/Western.png",
    "desc": "تاريخ · حرمين · ثقافة",
  },
  {
    "name": "المنطقة الجنوبية",
    "image": "assets/images/regions/Southern.png",
    "desc": "طبيعة · تراث · جبال",
  },
];

class _RegionsPageState extends State<RegionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset('assets/images/regions/malfa-logo.png', height: 32),
            const SizedBox(width: 8),

            Text(
              ('ملفى'),
              style: TextStyle(
                color: Color(0xFF1F6148),
                fontFamily: 'Cairo',
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Image.asset(
              'assets/images/regions/Founding-day-logo.png',
              height: 32,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(height: 1, thickness: 1, color: Color(0xFF846043)),

            const SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  // البنر
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/regions/banner.jpg',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 22),

                  // الكروت
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: regions.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.9,
                        ),
                    itemBuilder: (context, index) {
                      final region = regions[index];

                      return InkWell(
                        borderRadius: BorderRadius.circular(12),
                        /* onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegionDetailsPage(),
                            ),
                          )
                        },
*/
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF846043),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                blurRadius: 6,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Image.asset(
                                      region['image']!,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  region['name']!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  region['desc']!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 11,
                                  ),
                                ),

                                const SizedBox(height: 6),
                                const Text(
                                  "تفاصيل ›",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(255, 255, 255, 0.7),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
