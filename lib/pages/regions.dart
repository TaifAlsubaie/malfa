import 'package:flutter/material.dart';
import 'details.dart';

class RegionsPage extends StatefulWidget {
  const RegionsPage({super.key});

  @override
  State<RegionsPage> createState() => _RegionsPageState();
}

final List<Map<String, String>> regions = [
  {
    "key": "الوسطى",
    "name": "المنطقة الوسطى",
    "image": "assets/images/regions/Central.png",
    "desc": "قلب المملكة · تاريخ وحضارة",
  },
  {
    "key": "الشمالية",
    "name": "المنطقة الشمالية",
    "image": "assets/images/regions/Northern.png",
    "desc": "إرث قديم · بوابة الشمال",
  },
  {
    "key": "الشرقية",
    "name": "المنطقة الشرقية",
    "image": "assets/images/regions/Eastern.png",
    "desc": "ساحل · اقتصاد · تنوع",
  },
  {
    "key": "الغربية",
    "name": "المنطقة الغربية",
    "image": "assets/images/regions/Western.png",
    "desc": "تاريخ · حرمين · ثقافة",
  },
  {
    "key": "الجنوبية",
    "name": "المنطقة الجنوبية",
    "image": "assets/images/regions/Southern.png",
    "desc": "طبيعة · تراث · جبال",
  },
];

class _RegionsPageState extends State<RegionsPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _bannerScale;

  @override
  void initState() {
    super.initState();

    // أنيميشن للكروت + البنر
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    );

    // ✅ زوم البنر: يبدأ أكبر شوي ثم يرجع طبيعي
    _bannerScale = Tween<double>(begin: 1.20, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        // نخليه بالبداية فقط من مدة الأنيميشن
        curve: const Interval(0.0, 0.70, curve: Curves.easeOutCubic),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset('assets/images/regions/logo.png', height: 40),
            const SizedBox(width: 8),
            const Text(
              'ملفى',
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
                  // ✅ البنر مع زوم خفيف
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: AnimatedBuilder(
                      animation: _bannerScale,
                      child: Image.asset(
                        'assets/images/regions/banner.jpg',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      builder: (context, child) {
                        return Transform.scale(
                          scale: _bannerScale.value,
                          child: child,
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 22),

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

                      final start = (index * 0.18).clamp(0.0, 0.92);
                      final end = (start + 0.55).clamp(0.0, 1.0);

                      final animation = CurvedAnimation(
                        parent: _controller,
                        curve: Interval(start, end, curve: Curves.easeOutCubic),
                      );

                      return AnimatedBuilder(
                        animation: animation,
                        child: _RegionCard(
                          region: region,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailsPage(regionName: region['key']!),
                              ),
                            );
                          },
                        ),
                        builder: (context, child) {
                          final v = animation.value; // 0 -> 1
                          return Opacity(
                            opacity: v,
                            child: Transform.translate(
                              offset: Offset(0, (1 - v) * 34),
                              child: child,
                            ),
                          );
                        },
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

class _RegionCard extends StatelessWidget {
  final Map<String, String> region;
  final VoidCallback onTap;

  const _RegionCard({required this.region, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
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
                  color: Color(0xFFe5d7c5),
                  fontSize: 16,
                  fontFamily: 'Cairo',
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
                  fontFamily: 'Cairo',
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "تفاصيل ›",
                style: TextStyle(
                  fontSize: 11,
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Cairo',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
