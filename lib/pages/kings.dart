import 'package:flutter/material.dart';
import 'package:malfa/layout/main_layout.dart';

class KingsPage extends StatefulWidget {
  const KingsPage({super.key});

  @override
  State<KingsPage> createState() => _KingsPageState();
}

class _KingsPageState extends State<KingsPage> {
  final List<Map<String, dynamic>> kingsData = [
    {
      "year": "١٧٤٤م",
      "subtitle": "الإمام محمد بن سعود",
      "desc": "بزوغ فجر الدولة السعودية الأولى من الدرعية، حيث وضع الركائز الأساسية لوحدة الكيان.",
      "image": "assets/images/kings/king1.jpg",
    },
    {
      "year": "١٨٢٤م",
      "subtitle": "الإمام تركي بن عبد الله",
      "desc": "إعادة بناء الكيان واتخاذ الرياض عاصمة للدولة السعودية الثانية بعد رحلة كفاح.",
      "image": "assets/images/kings/king2.jpg",
    },
    {
      "year": "١٩٣٢م",
      "subtitle": "الملك عبد العزيز آل سعود",
      "desc": "المؤسس الذي وحد الشتات وأعلن قيام المملكة العربية السعودية الحديثة.",
      "image": "assets/images/kings/king3.jpg",
    },
    {
      "year": "١٩٥٣م",
      "subtitle": "الملك سعود بن عبد العزيز",
      "desc": "أول من أسس الوزارات وطور التعليم والخدمات الصحية، وشهد عهده أولى توسعات الحرمين.",
      "image": "assets/images/kings/king4.jpg",
    },
    {
      "year": "١٩٦٤م",
      "subtitle": "الملك فيصل بن عبد العزيز",
      "desc": "رائد النهضة الإدارية والاقتصادية، وعُرف بمواقفه العربية والإسلامية العظيمة دولياً.",
      "image": "assets/images/kings/king5.jpg",
    },
    {
      "year": "١٩٧٥م",
      "subtitle": "الملك خالد بن عبد العزيز",
      "desc": "تميز عهده بالرخاء الاقتصادي والمشاريع التنموية الضخمة في كافة أنحاء المملكة.",
      "image": "assets/images/kings/king6.jpg",
    },
    {
      "year": "١٩٨٢م",
      "subtitle": "الملك فهد بن عبد العزيز",
      "desc": "خادم الحرمين الشريفين، شهد عهده تحديثاً شاملاً للأنظمة وتوسعة تاريخية للحرمين.",
      "image": "assets/images/kings/king7.jpg",
    },
    {
      "year": "٢٠٠٥م",
      "subtitle": "الملك عبد الله بن عبد العزيز",
      "desc": "عُرف بملك الإنسانية، ركز على تطوير التعليم العالي وبرامج الابتعاث والمدن الاقتصادية.",
      "image": "assets/images/kings/king8.jpg",
    },
    {
      "year": "٢٠١٥م",
      "subtitle": "الملك سلمان بن عبد العزيز",
      "desc": "قيادة مرحلة التحول التاريخي ورؤية ٢٠٣٠ لتمكين الإنسان وبناء المستقبل.",
      "image": "assets/images/kings/king9.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5D7C5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF2D5A41)),
          onPressed: () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const MainLayout()),
            (route) => false,
          ),
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


  Widget _buildHeader() {
    return Column(
      children: [
        const Text(
          'ملوك الدولة السعودية',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF846043),
            fontFamily: 'Cairo',
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 3,
          width: 60,
          decoration: BoxDecoration(
            color: const Color(0xFF2D5A41),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

class _AnimatedTimelineItem extends StatefulWidget {
  final Map<String, dynamic> king;
  final int index;
  final int total;

  const _AnimatedTimelineItem({
    super.key,
    required this.king,
    required this.index,
    required this.total,
  });

  @override
  State<_AnimatedTimelineItem> createState() => _AnimatedTimelineItemState();
}

class _AnimatedTimelineItemState extends State<_AnimatedTimelineItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    // تعريف الأنيميشن بشكل صريح
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.6, curve: Curves.easeIn)),
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset(widget.index % 2 == 0 ? -0.5 : 0.5, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutQuart));

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut), // هنا تم التأكد من الربط
    );

    // تشغيل الأنيميشن مع تأخير بناءً على الترتيب
    Future.delayed(Duration(milliseconds: widget.index * 150), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isLeft = widget.index % 2 == 0;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return FadeTransition(
          opacity: _fadeAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: child,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            if (widget.index != widget.total - 1)
              Positioned(
                top: 40,
                bottom: -40,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 1.5,
                    color: const Color(0xFF846043).withOpacity(0.3),
                  ),
                ),
              ),
            Row(
              children: [
                Expanded(
                  child: isLeft
                      ? _buildTextContent(widget.king, CrossAxisAlignment.end)
                      : ScaleTransition(scale: _scaleAnimation, child: _buildKingImage(widget.king["image"])),
                ),
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  child: ScaleTransition(
                    scale: _scaleAnimation,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5D7C5),
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xFF2D5A41), width: 2.5),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: !isLeft
                      ? _buildTextContent(widget.king, CrossAxisAlignment.start)
                      : ScaleTransition(scale: _scaleAnimation, child: _buildKingImage(widget.king["image"])),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextContent(Map<String, dynamic> king, CrossAxisAlignment alignment) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          Text(
            king["year"],
            style: const TextStyle(
              color: Color(0xFF2D5A41),
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
            ),
          ),
          Text(
            king["subtitle"],
            textAlign: alignment == CrossAxisAlignment.end ? TextAlign.right : TextAlign.left,
            style: const TextStyle(
              color: Color(0xFF846043),
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'Cairo',
            ),
          ),
          const SizedBox(height: 6),
          Text(
            king["desc"],
            textAlign: alignment == CrossAxisAlignment.end ? TextAlign.right : TextAlign.left,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12.5,
              height: 1.4,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildKingImage(String path) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xFF846043).withOpacity(0.5)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(9),
          child: Image.asset(
            path,
            width: 75,
            height: 95,
            fit: BoxFit.cover,
            errorBuilder: (c, e, s) => const Icon(Icons.person, size: 40, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
