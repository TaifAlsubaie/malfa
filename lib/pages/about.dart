import 'package:flutter/material.dart';
import 'package:malfa/layout/main_layout.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  static const double elementSpace = 24;
  static const double titleRightPadding = 0;

  final List<String> names = const [
    'رهام سعد العتيبي',
    'ريما سلطان السبيعي',
    'طيف ماجد السبيعي',
    'ندى مسلم السبيعي',
  ];

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
            fontFamily: 'cairo',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 7, 20, 32),
        children: [
          const Divider(height: 1, thickness: 1, color: Color(0xFF846043)),
          const SizedBox(height: 10),

          // كارت "من نحن؟"
          _animatedCard(
            title: 'من نحن؟',
            content:
                'نحن طالبات جمعنا الشغف بالتقنية، وقد تم إنجاز هذا المشروع '
                'كإحدى مبادرات عضوات نادي السحابة الإلكترونية في قسم علوم الحاسب. '
                'وجاء تطبيق «ملفَى» ليقدّم تجربة تعليمية تفاعلية تُبرز يوم التأسيس '
                'الوطني بأسلوب تقني حديث وسهل الاستخدام.',
            index: 0,
          ),
          const SizedBox(height: elementSpace),

          // كارت "الهدف من المشروع"
          _animatedCard(
            title: 'الهدف من المشروع',
            content:
                'يمثل هذا المشروع امتداداً لرحلتنا البرمجية، حيث سعينا من خلاله '
                'إلى تطوير مهاراتنا في مجال برمجة التطبيقات. كما يهدف المشروع إلى '
                'إبراز مناسبة يوم التأسيس بأسلوب تفاعلي يعكس الهوية الوطنية ويتيح '
                'تجربة تعليمية مبتكرة وسهلة الاستخدام لجميع الفئات.',
            index: 1,
          ),
          const SizedBox(height: elementSpace),

          // كارت "الأدوات المستخدمة"
          _animatedCardWidget(
            title: 'الأدوات المستخدمة',
            child: _toolsCard(),
            index: 2,
          ),
          const SizedBox(height: elementSpace * 1.5),

          // كارت "فريق العمل"
          const Padding(
            padding: EdgeInsets.only(right: titleRightPadding),
            child: Text(
              'فريق العمل',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'cairo',
                fontWeight: FontWeight.bold,
                color: Color(0xFF846043),
              ),
            ),
          ),
          const SizedBox(height: elementSpace),
          ...List.generate(
            names.length,
            (index) => NameTile(name: names[index], index: index),
          ),

          // كارت الإشراف
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFF6F1EA),
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
              children: const [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Color(0xFFC49E61),
                  child: Icon(
                    Icons.workspace_premium,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'تحت إشراف',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'cairo',
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'د. بسمة الوسلاتي',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'cairo',
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _animatedCard({
    required String title,
    required String content,
    int index = 0,
  }) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: 400 + (index * 100)),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: Container(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: titleRightPadding),
              child: Text(
                title,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF846043),
                  fontFamily: 'cairo',
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'cairo',
                height: 1.7,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _animatedCardWidget({
    required String title,
    required Widget child,
    int index = 0,
  }) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: 400 + (index * 100)),
      curve: Curves.easeOut,
      builder: (context, value, widgetChild) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: widgetChild,
          ),
        );
      },
      child: Container(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: titleRightPadding),
              child: Text(
                title,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF846043),
                ),
              ),
            ),
            const SizedBox(height: 12),
            child,
          ],
        ),
      ),
    );
  }

  // الأدوات المستخدمة
  Widget _toolsCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        _ToolImage(
          imagePath: 'assets/images/about/flutter_icon.png',
          label: 'Flutter',
        ),
        _ToolImage(imagePath: 'assets/images/about/dart.png', label: 'Dart'),
        _ToolImage(
          imagePath: 'assets/images/about/githup_icon.png',
          label: 'GitHub',
        ),
        _ToolImage(
          imagePath: 'assets/images/about/Figma_icon.png',
          label: 'Figma',
        ),
      ],
    );
  }
}

class _ToolImage extends StatelessWidget {
  final String imagePath;
  final String label;

  const _ToolImage({required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Image.asset(imagePath, fit: BoxFit.contain),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
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
          color: Colors.white,
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
              backgroundColor: Color(0xFFC49E61),
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
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
