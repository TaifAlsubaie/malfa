import 'package:flutter/material.dart';
import 'package:malfa/layout/main_layout.dart';

class KingsPage extends StatelessWidget {
  const KingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF2D5A41)),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => const MainLayout()),
              (route) => false,
            );
          },
        ),
        title: const Text(
          'العودة',
          style: TextStyle(
            color: Color(0xFF2D5A41),
            fontWeight: FontWeight.bold,
            fontFamily: 'Cairo',
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: const [
            Divider(height: 1, thickness: 1, color: Color(0xFF846043)),
            SizedBox(height: 20),
            Center(
              child: Text(
                'ملوك الدولة السعودية',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8B6D45),
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'أهلاً بك في صفحة ملوك الدولة السعودية، حيث يمكنك التعرف على حكام المملكة عبر تاريخها منذ الدولة السعودية الأولى حتى يومنا هذا',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 58, 13),
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',
                ),
              ),
            ),

            // ----------------- الكروت مع index -----------------
            _AnimatedKingCard(
              title: "الدولة السعودية الأولى (1744-1818م)",
              points: [
                "الشيخ محمد بن سعود: مؤسس الدولة السعودية الأولى، أسس الإمارة في الدرعية بالتعاون مع الشيخ محمد بن عبد الوهاب، ووضع أسس الحكم والدين معاً ",
                "الملوك والخلفاء اللاحقون: واصلوا توسيع الدولة حتى سقوطها عام 1818م ",
              ],
              imageLeft: false,
              imagePath: "assets/images/kings/king1.jpg",
              index: 0,
            ),
            _AnimatedKingCard(
              title: "الدولة السعودية الثانية (1824-1891م)",
              points: [
                "الإمام تركي بن عبد الله آل سعود: أعاد توحيد الدولة بعد سقوطها، وأنشأ العاصمة الرياض كمركز للدولة ",
                "الإمام عبد الله بن سعود: استمر في قيادة الدولة حتى نهاية الدولة الثانية ",
              ],
              imageLeft: true,
              imagePath: "assets/images/kings/king2.jpg",
              index: 1,
            ),
            _AnimatedKingCard(
              title: "الدولة السعودية الحديثة (1932-حتى اليوم)",
              points: [
                "أسسها الملك عبد العزيز بن عبد الرحمن آل سعود، موحداً المناطق تحت راية واحدة، وبدأ مسيرة البناء والتنمية التي استمر عليها الخلفاء من بعده، ليقودوا المملكة نحو التطور والاستقرار والنهضة الحديثة ",
              ],
              imageLeft: false,
              imagePath: "assets/images/kings/king3.jpg",
              index: 2,
            ),
            _AnimatedKingCard(
              title: "الملك سعود بن عبد العزيز آل سعود (1953-1964م)",
              points: [
                "تولى الحكم بعد وفاة والده الملك عبد العزيز، واستمر في تطوير البنية التحتية والخدمات التعليمية والصحية ",
                "واجه تحديات اقتصادية وإدارية أدت إلى تنحيه عن الحكم عام 1964 ",
              ],
              imageLeft: true,
              imagePath: "assets/images/kings/king4.jpg",
              index: 3,
            ),
            _AnimatedKingCard(
              title: "الملك فيصل بن عبد العزيز آل سعود (1964-1975م)",
              points: [
                "قام بالإصلاحات الاقتصادية والسياسية، وعرف بسياساته العربية الحازمة والدور القوي في منظمة الأوبك ",
                "تم اغتياله في عام 1975 أثناء حكمه ",
              ],
              imageLeft: false,
              imagePath: "assets/images/kings/king5.jpg",
              index: 4,
            ),
            _AnimatedKingCard(
              title: "الملك خالد بن عبد العزيز آل سعود (1975-1982م)",
              points: [
                "استمر في نهج التنمية الشاملة والبنية التحتية الحديثة، وركز على التعليم والصحة ",
                "شهدت المملكة في عهده تطورًا اقتصاديًا كبيرًا بسبب ارتفاع أسعار النفط ",
              ],
              imageLeft: true,
              imagePath: "assets/images/kings/king6.jpg",
              index: 5,
            ),
            _AnimatedKingCard(
              title: "الملك فهد بن عبد العزيز آل سعود (1982-2005م)",
              points: [
                "شهدت المملكة توسعًا اقتصاديًا وبنية تحتية متقدمة، وبدأ عصر التحديث الإداري والقانوني ",
                "أطلق مبادرات التعليم والصحة بشكل واسع، وحافظ على دور المملكة الإقليمي والدولي ",
              ],
              imageLeft: false,
              imagePath: "assets/images/kings/king7.jpg",
              index: 6,
            ),
            _AnimatedKingCard(
              title: "الملك عبد الله بن عبد العزيز آل سعود (2005-2015م)",
              points: [
                "ركز على الإصلاحات الاقتصادية والاجتماعية، مثل تطوير التعليم وتمكين المرأة ",
                "أطلق مشاريع ضخمة للبنية التحتية، مثل المدن الصناعية والمطارات والطرق ",
              ],
              imageLeft: true,
              imagePath: "assets/images/kings/king8.jpg",
              index: 7,
            ),
            _AnimatedKingCard(
              title: "الملك سلمان بن عبد العزيز آل سعود (2015-حتى اليوم)",
              points: [
                "واصل مسيرة البناء والتنمية، وأطلق رؤية المملكة 2030 لتحديث الاقتصاد والمجتمع ",
                "ركز على الابتكار والتكنولوجيا وتنمية القطاعات غير النفطية ",
              ],
              imageLeft: false,
              imagePath: "assets/images/kings/king9.jpg",
              index: 8,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// ----------------- Animated King Card -----------------

class _AnimatedKingCard extends StatefulWidget {
  final String title;
  final List<String> points;
  final bool imageLeft;
  final String imagePath;
  final int index; // ترتيب الكرت

  const _AnimatedKingCard({
    required this.title,
    required this.points,
    required this.imageLeft,
    required this.imagePath,
    required this.index,
  });

  @override
  State<_AnimatedKingCard> createState() => _AnimatedKingCardState();
}

class _AnimatedKingCardState extends State<_AnimatedKingCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.3, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    // التأخير يعتمد على ترتيب الكرت
    Future.delayed(Duration(milliseconds: widget.index * 300), () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: _buildKingCardData(
          widget.title,
          widget.points,
          widget.imageLeft,
          widget.imagePath,
        ),
      ),
    );
  }

  Widget _buildKingCardData(
    String title,
    List<String> points,
    bool imageLeft,
    String imagePath,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF846043),
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
                      fontFamily: 'Cairo',
                    ),
                  ),
                  const SizedBox(height: 8),
                  ...points.map(
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
                                fontFamily: 'Cairo',
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
                  ),
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
}


