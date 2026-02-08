import 'package:flutter/material.dart';

void main() {
  runApp(const MySaudiRoot());
}

class MySaudiRoot extends StatelessWidget {
  const MySaudiRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('ar', 'SA'),
      supportedLocales: [Locale('ar', 'SA')],
      home: KingsPage(),
    );
  }
}

class KingsPage extends StatelessWidget {
  const KingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios, color: Color(0xFF2D5A41)),
        title: const Text(
          'العودة',
          style: TextStyle(
            color: Color(0xFF2D5A41),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Divider(thickness: 1),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'ملوك الدولة السعودية',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8B6D45),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'أهلاً بك في صفحة ملوك الدولة السعودية، حيث يمكنك التعرف على حكام المملكة عبر تاريخها منذ الدولة السعودية الأولى حتى يومنا هذا',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 58, 13),
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // ===================== الدولة السعودية الأولى =====================
            _buildKingCard(
              "الدولة السعودية الأولى (1744-1818م)",
              [
                "الشيخ محمد بن سعود: مؤسس الدولة السعودية الأولى، أسس الإمارة في الدرعية بالتعاون مع الشيخ محمد بن عبد الوهاب، ووضع أسس الحكم والدين معاً ",
                "الملوك والخلفاء اللاحقون: واصلوا توسيع الدولة حتى سقوطها عام 1818م ",
              ],
              false,
              "assets/images/king1.jpg",
            ),

            // ===================== الدولة السعودية الثانية =====================
            _buildKingCard(
              "الدولة السعودية الثانية (1824-1891م)",
              [
                "الإمام تركي بن عبد الله آل سعود: أعاد توحيد الدولة بعد سقوطها، وأنشأ العاصمة الرياض كمركز للدولة ",
                "الإمام عبد الله بن سعود: استمر في قيادة الدولة حتى نهاية الدولة الثانية ",
              ],
              true,
              "assets/images/king2.jpg",
            ),

            // ===================== الدولة السعودية الحديثة =====================
            _buildKingCard(
              "الدولة السعودية الحديثة (1932-حتى اليوم)",
              [
                "أسسها الملك عبد العزيز بن عبد الرحمن آل سعود، موحداً المناطق تحت راية واحدة، وبدأ مسيرة البناء والتنمية التي استمر عليها الخلفاء من بعده، ليقودوا المملكة نحو التطور والاستقرار والنهضة الحديثة ",
              ],
              false,
              "assets/images/king3.jpg",
            ),

            // ===================== الملك سعود =====================
            _buildKingCard(
              "الملك سعود بن عبد العزيز آل سعود (1953-1964م)",
              [
                "تولى الحكم بعد وفاة والده الملك عبد العزيز، واستمر في تطوير البنية التحتية والخدمات التعليمية والصحية ",
                "واجه تحديات اقتصادية وإدارية أدت إلى تنحيه عن الحكم عام 1964 ",
              ],
              true,
              "assets/images/king4.jpg",
            ),

            // ===================== الملك فيصل =====================
            _buildKingCard(
              "الملك فيصل بن عبد العزيز آل سعود (1964-1975م)",
              [
                "قام بالإصلاحات الاقتصادية والسياسية، وعرف بسياساته العربية الحازمة والدور القوي في منظمة الأوبك ",
                "تم اغتياله في عام 1975 أثناء حكمه ",
              ],
              false,
              "assets/images/king5.jpg",
            ),

            // ===================== الملك خالد =====================
            _buildKingCard(
              "الملك خالد بن عبد العزيز آل سعود (1975-1982م)",
              [
                "استمر في نهج التنمية الشاملة والبنية التحتية الحديثة، وركز على التعليم والصحة ",
                "شهدت المملكة في عهده تطورًا اقتصاديًا كبيرًا بسبب ارتفاع أسعار النفط ",
              ],
              true,
              "assets/images/king6.jpg",
            ),

            // ===================== الملك فهد =====================
            _buildKingCard(
              "الملك فهد بن عبد العزيز آل سعود (1982-2005م)",
              [
                "شهدت المملكة توسعًا اقتصاديًا وبنية تحتية متقدمة، وبدأ عصر التحديث الإداري والقانوني ",
                "أطلق مبادرات التعليم والصحة بشكل واسع، وحافظ على دور المملكة الإقليمي والدولي ",
              ],
              false,
              "assets/images/king7.jpg",
            ),

            // ===================== الملك عبد الله =====================
            _buildKingCard(
              "الملك عبد الله بن عبد العزيز آل سعود (2005-2015م)",
              [
                "ركز على الإصلاحات الاقتصادية والاجتماعية، مثل تطوير التعليم وتمكين المرأة ",
                "أطلق مشاريع ضخمة للبنية التحتية، مثل المدن الصناعية والمطارات والطرق ",
              ],
              true,
              "assets/images/king8.jpg",
            ),

            // ===================== الملك سلمان =====================
            _buildKingCard(
              "الملك سلمان بن عبد العزيز آل سعود (2015-حتى اليوم)",
              [
                "واصل مسيرة البناء والتنمية، وأطلق رؤية المملكة 2030 لتحديث الاقتصاد والمجتمع ",
                "ركز على الابتكار والتكنولوجيا وتنمية القطاعات غير النفطية ",
              ],
              false,
              "assets/images/king9.jpg",
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildKingCard(
    String title,
    List<String> points,
    bool imageLeft,
    String imagePath,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFC49E61), 
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imageLeft) _buildKingImage(imagePath),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ...points
                      .map(
                        (point) => Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Text(
                                  point,
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.5,
                                    height: 1.4,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5, top: 2),
                                child: Text(
                                  "•",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
          ),
          if (!imageLeft) _buildKingImage(imagePath),
        ],
      ),
    );
  }

  Widget _buildKingImage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 100,
        height: 120,
        color: Colors.white.withOpacity(0.2),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.person, color: Colors.white, size: 50),
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFFC49E61),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      ],
    );
  }
}

