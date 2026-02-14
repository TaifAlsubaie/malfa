import 'package:flutter/material.dart';

// كلاس تنظيم البيانات بكامل النصوص بدون أي حذف
class RegionContent {
  final String title,
      description,
      mainImage,
      dress1,
      dress2,
      location,
      culture,
      arts,
      folkImage,
      landmarks,
      food;

  RegionContent({
    required this.title,
    required this.description,
    required this.mainImage,
    required this.dress1,
    required this.dress2,
    required this.location,
    required this.culture,
    required this.arts,
    required this.folkImage,
    required this.landmarks,
    required this.food,
  });
}

class DetailsPage extends StatefulWidget {
  final String regionName;
  DetailsPage({required this.regionName});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with SingleTickerProviderStateMixin {
  static const Color brandBrown = Color(0xFF70563B);
  bool _startSpecificAnimation = false;

  final Map<String, RegionContent> allRegions = {
    'الجنوبية': RegionContent(
      title: 'المنطقة الجنوبية',
      mainImage: 'assets/images/details/south_main.jpg',
      dress1: 'assets/images/details/south_women.jpg',
      dress2: 'assets/images/details/south_men.jpg',
      folkImage: 'assets/images/details/south_folk.jpg',
      description:
          'تُعد المنطقة الجنوبية من أعرق مناطق المملكة العربية السعودية، حيث تمتد جذورها التاريخية إلى حضارات قديمة تركت آثارها الواضحة في العمارة والعادات والثقافة. ساهم موقعها الجبلي وتنوع بيئاتها الطبيعية في تشكيل نمط حياة مميز، وجعلها منطقة ذات أهمية استراتيجية وثقافية منذ القدم. كما كان لها دور بارز في دعم وحدة الدولة السعودية وتعزيز استقرارها عبر العصور، بما تملكه من إرث حضاري إنساني غني.',
      location:
          'تقع في جنوب غرب المملكة العربية السعودية، وتضم عددًا من المناطق الإدارية، أبرزها عسير، وجازان، نجران، والباحة. تحدها من الجنوب الجمهورية اليمنية، ومن الغرب البحر الأحمر، ومن الشمال منطقة مكة المكرمة، ومن الشرق منطقة الرياض. ويمنحها هذا الموقع تنوعًا جغرافيًا فريدًا يجمع بين الجبال والسهول والسواحل.',
      culture:
          'تتميز المنطقة الجنوبية بتراث ثقافي غني يعكس تنوع بيئاتها وطبيعتها الجبلية، حيث تشتهر بعادات مترسخة في الكرم والتكاتف الاجتماعي، والارتباط بالأرض والزراعة. كما يظهر هذا التراث في العمارة التقليدية، والملابس الشعبية، والعادات الاجتماعية التي ما زالت حاضرة في حياة أهالي المنطقة اليوم.',
      arts:
          'تزخر المنطقة الجنوبية بالعديد من الفنون الشعبية التي تعكس هويتها الثقافية العميقة، ومن أبرزها فن الخطوة الجنوبية، وفن العرضة، وفن الزامل، إضافة إلى الأهازيج الجماعية التي تُؤدى في المناسبات الوطنية والاجتماعية. وتمثل هذه الفنون وسيلة للتعبير عن الفخر والانتماء، وتعكس روح التعاون والشجاعة التي عُرف بها أهل المنطقة.',
      landmarks:
          'تضم المنطقة الجنوبية العديد من المعالم التاريخية والسياحية، مثل القرى التراثية المبنية من الحجر والطين، والقلاع والحصون القديمة التي استخدمت للدفاع والمراقبة. كما تشتهر بالمدرجات الزراعية الممتدة على سفوح الجبال، إضافة إلى المواقع الأثرية التي تعكس عمق التاريخ الإنساني في المنطقة.',
      food:
          'تشتهر المنطقة الجنوبية بأكلات شعبية مميزة تعتمد على الحبوب والمنتجات الزراعية المحلية، مثل العريكة، والعصيدة، والمرقوق، الحنيذ، إضافة إلى استخدام السمن والعسل في العديد من الأطباق. وتعكس هذه الأطعمة طبيعة الحياة الجبلية وما اتسمت به من بساطة وارتباط وثيق بالبيئة.',
    ),
    'الشمالية': RegionContent(
      title: 'المنطقة الشمالية',
      mainImage: 'assets/images/details/north_main.jpg',
      dress1: 'assets/images/details/north_women.jpg',
      dress2: 'assets/images/details/north_men.jpg',
      folkImage: 'assets/images/details/north_folk.jpg',
      description:
          'تُعد المنطقة الشمالية من المناطق ذات الأهمية التاريخية في المملكة العربية السعودية، حيث شكّل موقعها الجغرافي نقطة عبور رئيسية بين الجزيرة العربية وبلاد الشام منذ القدم. وأسهم هذا الموقع في ازدهار الحركة التجارية واستقرار المجتمعات فيها، كما كان لها دور بارز في دعم الدولة السعودية وتعزيز وحدتها عبر المراحل التاريخية المختلفة.',
      location:
          'تقع في شمال المملكة العربية السعودية، وتمتد على مساحات واسعة تحدها من الشمال المملكة الأردنية الهاشمية، ومن الشرق منطقة الحدود الشمالية، ومن الغرب منطقة تبوك، ومن الجنوب منطقة القصيم. ويُعد موقعها الاستراتيجي عاملًا مهمًا جعلها حلقة وصل بين مناطق المملكة والمناطق المجاورة منذ العصور القديمة.',
      culture:
          'تتميز المنطقة الشمالية بتراث عريق متأثر ببيئاتها الصحراوية وتاريخها الممتد، حيث تنتشر العادات القائمة على الكرم وحسن الضيافة والشهامة. كما تُعد المجالس الشعبية، واللباس التقليدي، والعلاقات الاجتماعية المتماسكة جزءًا أساسيًا من الهوية الثقافية لأهالي المنطقة.',
      arts:
          'تزخر المنطقة الشمالية بعدد من الفنون الشعبية التي تعكس أصالة المجتمع وقيمه، ومن أبرزها العرضة الشمالية، والشيلات التراثية التي تعبّر عن الفخر والانتماء، إضافة إلى الشعر النبطي الذي يحتل مكانة مهمة في المناسبات الاجتماعية والوطنية، ويُعد وسيلة للتعبير عن التاريخ والهوية.',
      landmarks:
          'تزخر المنطقة الشمالية بالعديد من المعالم التاريخية والأثرية، مثل مواقع النقوش الصخرية التي تعود لآلاف السنين، والقلاع القديمة التي كانت تُستخدم للحماية والمراقبة، إضافة إلى الآثار المنتشرة على طرق القوافل القديمة التي كانت تمر عبر المنطقة، مما يعكس أهميتها التاريخية والتجارية.',
      food:
          'تشتهر المنطقة الشمالية بعدد من الأكلات الشعبية التي تعتمد على المنتجات المحلية، مثل الجريش، والقرصان، والمطازيز، إضافة إلى أكلات القمح والتمر التي تعكس بساطة المعيشة قديمًا. وتُعد هذه الأطعمة جزءًا من الهوية الغذائية التي توارثها أهل المنطقة عبر الأجيال.',
    ),
    'الغربية': RegionContent(
      title: 'المنطقة الغربية',
      mainImage: 'assets/images/details/west_main.jpg',
      dress1: 'assets/images/details/west_women.jpg',
      dress2: 'assets/images/details/west_men.jpg',
      folkImage: 'assets/images/details/west_folk.jpg',
      description:
          'تُعد المنطقة الغربية من أبرز مناطق المملكة العربية السعودية تاريخيًا ودينيًا، لما تحتضنه من مدينتين مقدستين لهما مكانة عظيمة في العالم الإسلامي. وأسهم موقعها على ساحل البحر الأحمر في جعلها مركزًا مهمًا للتجارة والحج والتواصل الحضاري، مما عزز دورها في تاريخ الدولة السعودية ومسيرتها نحو الوحدة والتنمية.',
      location:
          'تقع المنطقة الغربية في غرب المملكة العربية السعودية، وتمتد على ساحل البحر الأحمر، وتضم مناطق إدارية عدة، من أبرزها مكة المكرمة والمدينة المنورة وجدة والطائف. تحدها من الغرب مياه البحر الأحمر، ومن الشرق منطقة الرياض، ومن الشمال منطقة تبوك، ومن الجنوب المنطقة الجنوبية، ويمنحها هذا الموقع أهمية دينية وجغرافية كبيرة.',
      culture:
          'تتميز المنطقة الغربية بتنوع ثقافي واجتماعي فريد، ناتج عن تعاقب الحجاج والزوار من مختلف أنحاء العالم عبر القرون. وانعكس هذا التنوع على العادات الاجتماعية، واللباس التقليدي، وأنماط الحياة، مما جعل المنطقة نموذجًا للتعايش والتبادل الثقافي داخل المجتمع السعودي.',
      arts:
          'تزخر المنطقة الغربية بعدد من الفنون الشعبية التي تعبر عن تاريخها وهويتها الثقافية، ومن أبرزها فن المزمار، والمجرور، والخبيتي، إضافة إلى الأهازيج الشعبية التي تُؤدى في المناسبات الاجتماعية والوطنية. وتمثل هذه الفنون وسيلة للتعبير عن الفرح والانتماء، وتعكس روح المجتمع الحجازي الأصيل.',
      landmarks:
          'تضم المنطقة الغربية العديد من المعالم الدينية والتاريخية البارزة، مثل المسجد الحرام والمسجد النبوي، إضافة إلى المواقع التاريخية في مكة المكرمة والمدينة المنورة، والمناطق الساحلية في جدة. كما تحتوي على مبانٍ تاريخية وأسواق قديمة تعكس عمق الإرث الحضاري للمنطقة.',
      food:
          'تشتهر المنطقة الغربية بأكلات شعبية متنوعة تأثرت بثقافات متعددة، مثل السليق، والمطبق، والمنتو، واليغمش، إضافة إلى الأكلات البحرية المنتشرة في المناطق الساحلية. وتعكس هذه المأكولات طبيعة المنطقة المنفتحة وتنوعها الثقافي عبر الزمن.',
    ),
    'الشرقية': RegionContent(
      title: 'المنطقة الشرقية',
      mainImage: 'assets/images/details/east_main.jpg',
      dress1: 'assets/images/details/east_women.jpg',
      dress2: 'assets/images/details/east_men.jpg',
      folkImage: 'assets/images/details/east_folk.jpg',
      description:
          'تُعد المنطقة الشرقية من أقدم وأهم مناطق المملكة العربية السعودية، حيث شكّل موقعها الساحلي على الخليج العربي عاملًا رئيسيًا في ازدهارها عبر العصور. وكانت المنطقة معبرًا للتجارة البحرية ومحطة للتواصل الاقتصادي، وأسهمت في تعزيز الاستقرار ودعم موارد الدولة السعودية منذ بداياتها. كما تميّزت بتنوعها الثقافي والاجتماعي، مما جعلها جزءًا مهمًا من تاريخ الدولة ومسيرتها نحو الوحدة والنماء.',
      location:
          'تقع المنطقة الشرقية في شرق المملكة العربية السعودية، وتمتد على سواحل الخليج العربي، وتحدها من الشرق دول الخليج العربي، ومن الغرب منطقة الرياض، ومن الشمال دولة الكويت، ومن الجنوب صحراء الربع الخالي. ويمنحها هذا الموقع أهمية اقتصادية واستراتيجية كبيرة.',
      culture:
          'تتميز المنطقة الشرقية بتراث غني تأثر بالبيئة الساحلية والبرية، حيث اشتهرت بالمهن البحرية مثل الغوص على اللؤلؤ وصيد الأسماك، إلى جانب العادات الاجتماعية القائمة على التعاون والترابط الأسري. كما يظهر هذا التراث في اللباس التقليدي، والمجالس الشعبية، والعادات التي ما زالت حاضرة في حياة الأهالي.',
      arts:
          'تزخر المنطقة الشرقية بعدد من الفنون الشعبية التي تعكس تاريخها البحري والاجتماعي، ومن أبرزها فن العرضة، وفن الفجري المرتبط بالغوص على اللؤلؤ، إضافة إلى فن الخماري والأهازيج البحرية التي كان يؤديها البحارة أثناء العمل. وتمثل هذه الفنون جزءًا مهمًا من الهوية الثقافية للمنطقة.',
      landmarks:
          'تضم المنطقة الشرقية العديد من المعالم التاريخية والحضارية، مثل القلاع القديمة، والأسواق الشعبية، والموانئ التاريخية، إضافة إلى المواقع التراثية المرتبطة بتاريخ الغوص والتجارة البحرية. كما تشتهر بمدنها الساحلية التي لعبت دورًا مهمًا في الحركة الاقتصادية للمملكة.',
      food:
          'تشتهر المنطقة الشرقية بأكلات شعبية تعتمد على المنتجات البحرية والتمور، مثل المجبوس، والسمك المشوي، والربيان، إضافة إلى أطباق الأرز المتنوعة. وتعكس هذه المأكولات طبيعة البيئة الساحلية وارتباط الإنسان بالبحر منذ القدم.',
    ),
    'الوسطى': RegionContent(
      title: 'المنطقة الوسطى',
      mainImage: 'assets/images/details/central_main.jpg',
      dress1: 'assets/images/details/central_women.jpg',
      dress2: 'assets/images/details/central_men.jpg',
      folkImage: 'assets/images/details/central_folk.jpg',
      description:
          'تُعد المنطقة الوسطى قلب المملكة العربية السعودية، ومهد انطلاقة الدولة السعودية، حيث ارتبط تاريخها ببدايات التوحيد وترسيخ أسس الحكم والاستقرار. وأسهم موقعها الجغرافي في جعلها مركزًا سياسيًا وإداريًا مهمًا، كما لعبت دورًا بارزًا في توحيد البلاد ودعم مسيرتها التنموية عبر العصور.',
      location:
          'تقع المنطقة الوسطى في وسط المملكة العربية السعودية، وتضم منطقة الرياض وما حولها. تحدها من الشمال المنطقة الشمالية، ومن الجنوب المنطقة الجنوبية، ومن الشرق المنطقة الشرقية، ومن الغرب المنطقة الغربية. ويمنحها هذا الموقع مكانة استراتيجية جعلتها محورًا يربط مختلف مناطق المملكة.',
      culture:
          'تتميز المنطقة الوسطى بتراث أصيل متجذر في البيئة الصحراوية، حيث ارتبطت حياة السكان قديمًا بالبادية والزراعة والتجارة. كما تشتهر بالعادات القائمة على الكرم، والشهامة، والتمسك بالقيم الاجتماعية، إضافة إلى المجالس التقليدية التي كانت ولا تزال جزءًا من الحياة اليومية.',
      arts:
          'تزخر المنطقة الوسطى بعدد من الفنون الشعبية التي تعكس هويتها الوطنية، ومن أبرزها العرضة السعودية التي تُعد رمزًا وطنيًا يُؤدى في المناسبات الرسمية والوطنية، إضافة إلى فن السامري، والأهازيج الشعبية التي تعبر عن الفخر والانتماء وتعزز الروابط الاجتماعية بين أفراد المجتمع.',
      landmarks:
          'تضم المنطقة الوسطى العديد من المعالم التاريخية المهمة، مثل الدرعية التاريخية التي تُعد مهد الدولة السعودية، إضافة إلى القصور والأسوار القديمة، والمواقع التراثية التي تعكس مراحل تأسيس الدولة وتطورها عبر الزمن.',
      food:
          'تشتهر المنطقة الوسطى بأكلات شعبية تعتمد على المنتجات المحلية، مثل الجريش، والقرصان، والكليجا، والمطازيز، إضافة إلى الأطباق التقليدية التي ارتبطت بالحياة اليومية قديمًا. وتعكس هذه المأكولات بساطة المعيشة وكرم الضيافة لدى أهل المنطقة.',
    ),
  };

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 400), () {
        if (mounted) setState(() => _startSpecificAnimation = true);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final region = allRegions[widget.regionName] ?? allRegions['الوسطى']!;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leadingWidth: 150,
        leading: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20),
          child: _buildBackButton(context, brandBrown),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // الصورة الرئيسية: تظهر مباشرة (ثابتة)
              _buildImageFrame(region.mainImage, brandBrown, isMain: true),

              const SizedBox(height: 30),
              _buildSectionTitle(region.title, brandBrown),
              _buildSectionBody(region.description),

              const SizedBox(height: 30),
              _buildSectionTitle('الزي الرسمي', brandBrown),
              const SizedBox(height: 15),

              // صور الزي: أنميشن بطيء وفخم
              Row(
                children: [
                  Expanded(
                    child: _applyAnimation(
                      child: _buildDressCard(region.dress1, brandBrown),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: _applyAnimation(
                      child: _buildDressCard(region.dress2, brandBrown),
                    ),
                  ),
                ],
              ),

              _buildNormalSection(
                'الموقع الجغرافي',
                region.location,
                brandBrown,
              ),
              _buildNormalSection(
                'التراث والثقافة',
                region.culture,
                brandBrown,
              ),

              // صور الفنون الشعبية: تم توحيدها لتأخذ نفس تأثير الأزياء الشعبية بالضبط
              _buildFolkSection(
                'الفنون الشعبية',
                region.arts,
                region.folkImage,
                brandBrown,
              ),

              _buildNormalSection('أبرز المعالم', region.landmarks, brandBrown),
              _buildNormalSection('المأكولات الشعبية', region.food, brandBrown),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  // دالة الأنميشن الموحدة للأزياء والفنون الشعبية (تأثير Scale + Opacity بطيء)
  Widget _applyAnimation({required Widget child}) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 1500),
      opacity: _startSpecificAnimation ? 1.0 : 0.0,
      child: AnimatedScale(
        duration: const Duration(milliseconds: 1500),
        scale: _startSpecificAnimation ? 1.0 : 0.7, // نفس نسبة التكبير
        curve: Curves.easeOutBack, // نفس منحنى الحركة للأزياء
        child: child,
      ),
    );
  }

  Widget _buildImageFrame(String path, Color color, {bool isMain = false}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: color, width: 2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(23),
        child: AspectRatio(
          aspectRatio: isMain ? 16 / 10 : 16 / 9,
          child: Image.asset(path, fit: BoxFit.cover),
        ),
      ),
    );
  }

  // بناء كارت الزي
  Widget _buildDressCard(String path, Color color) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color, width: 2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Image.asset(path, fit: BoxFit.cover),
      ),
    );
  }

  // بناء قسم الفنون الشعبية بنفس أنميشن الأزياء
  Widget _buildFolkSection(
    String title,
    String body,
    String imagePath,
    Color color,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        _buildSectionTitle(title, color),
        _buildSectionBody(body),
        const SizedBox(height: 15),
        // هنا تم استخدام نفس دالة الأنميشن ونفس إطار الصورة الخاص بالفنون
        _applyAnimation(child: _buildImageFrame(imagePath, color)),
      ],
    );
  }

  Widget _buildNormalSection(String title, String body, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        _buildSectionTitle(title, color),
        _buildSectionBody(body),
      ],
    );
  }

  Widget _buildSectionTitle(String title, Color color) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: 22,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSectionBody(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontFamily: 'Cairo',
          height: 1.6,
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context, Color color) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.arrow_back_ios, color: color, size: 18),
          const SizedBox(width: 4),
          Text(
            'العودة',
            style: TextStyle(
              color: color,
              fontSize: 18,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
