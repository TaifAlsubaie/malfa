import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  final Color primaryText = const Color.fromARGB(255, 0, 0, 0);
  final Color secondaryText = const Color.fromARGB(255, 0, 0, 0);
  final Color accentBrown = const Color.fromARGB(255, 105, 91, 60);

  static const double elementSpace = 24;

  final List<String> names = const [
    'الطالبة الأولى',
    'الطالبة الثانية',
    'الطالبة الثالثة',
    'الطالبة الرابعة',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),

      appBar: AppBar(
        backgroundColor: const Color(0xFF846043),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          'من نحن',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 28,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
        children: [
          _aboutCard(),

          const SizedBox(height: elementSpace * 1.5),

          Text(
            'فريق العمل',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 77, 68, 28),
            ),
          ),

          const SizedBox(height: elementSpace),

          ...List.generate(
            names.length,
            (index) => NameTile(name: names[index], index: index),
          ),
        ],
      ),
    );
  }

  Widget _aboutCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Text(
        'نحن طالبات جمعنا الشغف بالتقنية وحب التجربة والتعلّم، '
        'ومن هذا المنطلق جاء تطبيق «ملفَى» ليكون تجربة تعليمية '
        'وإبداعية تتناول يوم التأسيس السعودي، وتسلّط الضوء على '
        'هذه المناسبة الوطنية العزيزة بأسلوب تقني حديث وسهل '
        'الاستخدام. يمثّل هذا المشروع امتدادًا لرحلتنا البرمجية، '
        'حيث سعينا من خلاله إلى تطوير مهاراتنا وتطبيق ما تعلمناه '
        'في مجال برمجة التطبيقات.',
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        style: TextStyle(fontSize: 17, height: 1.8, color: Colors.black),
      ),
    );
  }
}

class NameTile extends StatelessWidget {
  const NameTile({super.key, required this.name, required this.index});

  final String name;
  final int index;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: 400 + (index * 100)),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 10 * (1 - value)),
            child: child,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 8,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            const CircleAvatar(
              radius: 16,
              backgroundColor: Color.fromARGB(255, 204, 187, 133),
              child: Icon(Icons.person, size: 18, color: Colors.black54),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                name,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
