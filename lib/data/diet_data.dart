import '../models/diet_plan.dart';

class DietData {
  static List<DietPlan> getDietPlans() {
    return [
      // الأنظمة الأصلية
      DietPlan(
        id: '1',
        name: 'رجيم الكيتو',
        description: 'نظام غذائي عالي الدهون ومنخفض الكربوهيدرات يساعد على فقدان الوزن بسرعة',
        duration: '4 أسابيع',
        targetWeight: '5-10 كجم',
        difficulty: 'متوسط',
        imageUrl: '🥑',
        benefits: [
          'فقدان سريع للوزن',
          'تحسين الطاقة والتركيز',
          'تقليل الشهية',
          'تحسين مستوى السكر في الدم'
        ],
        meals: _getKetoMeals(),
      ),
      DietPlan(
        id: '2',
        name: 'رجيم البحر المتوسط',
        description: 'نظام غذائي صحي يعتمد على زيت الزيتون والأسماك والخضروات',
        duration: '8 أسابيع',
        targetWeight: '3-8 كجم',
        difficulty: 'سهل',
        imageUrl: '🐟',
        benefits: [
          'صحة القلب والأوعية الدموية',
          'تقليل خطر الإصابة بالسكري',
          'فقدان وزن مستدام',
          'تحسين وظائف الدماغ'
        ],
        meals: _getMediterraneanMeals(),
      ),
      DietPlan(
        id: '3',
        name: 'رجيم الصيام المتقطع',
        description: 'نظام يعتمد على تناول الطعام في فترات محددة والصيام لساعات معينة',
        duration: '6 أسابيع',
        targetWeight: '4-9 كجم',
        difficulty: 'متوسط',
        imageUrl: '⏰',
        benefits: [
          'تحسين عملية الأيض',
          'فقدان الوزن الزائد',
          'تحسين حساسية الأنسولين',
          'تجديد الخلايا'
        ],
        meals: _getIntermittentFastingMeals(),
      ),
      DietPlan(
        id: '4',
        name: 'رجيم النباتي',
        description: 'نظام غذائي يعتمد كلياً على الأطعمة النباتية',
        duration: '6 أسابيع',
        targetWeight: '3-7 كجم',
        difficulty: 'متوسط',
        imageUrl: '🥬',
        benefits: [
          'تحسين صحة القلب',
          'فقدان وزن صحي',
          'زيادة الألياف والفيتامينات',
          'تقليل خطر السرطان'
        ],
        meals: _getVeganMeals(),
      ),
      DietPlan(
        id: '5',
        name: 'رجيم دوكان',
        description: 'نظام عالي البروتين ومنخفض الكربوهيدرات على أربع مراحل',
        duration: '8 أسابيع',
        targetWeight: '5-12 كجم',
        difficulty: 'صعب',
        imageUrl: '🥩',
        benefits: [
          'فقدان سريع للوزن',
          'المحافظة على الكتلة العضلية',
          'تقليل الشهية',
          'نتائج دائمة'
        ],
        meals: _getDukanMeals(),
      ),
      DietPlan(
        id: '6',
        name: 'رجيم داش',
        description: 'نظام غذائي لتقليل ضغط الدم المرتفع وفقدان الوزن',
        duration: '6 أسابيع',
        targetWeight: '3-6 كجم',
        difficulty: 'سهل',
        imageUrl: '🍎',
        benefits: [
          'تقليل ضغط الدم',
          'فقدان وزن صحي',
          'تحسين صحة القلب',
          'تقليل الكوليسترول'
        ],
        meals: _getDashMeals(),
      ),
      DietPlan(
        id: '7',
        name: 'رجيم المنطقة',
        description: 'نظام يعتمد على توازن الهرمونات من خلال النسب الغذائية',
        duration: '4 أسابيع',
        targetWeight: '2-5 كجم',
        difficulty: 'متوسط',
        imageUrl: '⚖️',
        benefits: [
          'توازن الهرمونات',
          'تحسين الطاقة',
          'فقدان وزن مستدام',
          'تقليل الالتهابات'
        ],
        meals: _getZoneMeals(),
      ),
      DietPlan(
        id: '8',
        name: 'رجيم الـ 1200 سعرة',
        description: 'نظام منخفض السعرات الحرارية لفقدان الوزن السريع',
        duration: '4 أسابيع',
        targetWeight: '4-8 كجم',
        difficulty: 'صعب',
        imageUrl: '🔢',
        benefits: [
          'فقدان سريع للوزن',
          'تعلم التحكم في الحصص',
          'نتائج سريعة',
          'تحفيز عالي'
        ],
        meals: _get1200CalorieMeals(),
      ),
      DietPlan(
        id: '9',
        name: 'رجيم الكارب سايكل',
        description: 'نظام يعتمد على تناوب الكربوهيدرات العالية والمنخفضة',
        duration: '6 أسابيع',
        targetWeight: '4-9 كجم',
        difficulty: 'صعب',
        imageUrl: '🔄',
        benefits: [
          'فقدان الدهون مع الحفاظ على العضلات',
          'مرونة في الوجبات',
          'تحسين الأداء الرياضي',
          'منع بطء الأيض'
        ],
        meals: _getCarbCycleMeals(),
      ),
      DietPlan(
        id: '10',
        name: 'رجيم الفواكه والخضار',
        description: 'نظام يعتمد على الفواكه والخضروات الطازجة لتطهير الجسم',
        duration: '3 أسابيع',
        targetWeight: '3-6 كجم',
        difficulty: 'متوسط',
        imageUrl: '🍓',
        benefits: [
          'تطهير الجسم من السموم',
          'زيادة الطاقة والحيوية',
          'تحسين صحة الجلد',
          'فقدان وزن سريع'
        ],
        meals: _getFruitVegMeals(),
      ),
      
      // الأنظمة الجديدة
      DietPlan(
        id: '11',
        name: 'رجيم الماء',
        description: 'نظام يعتمد على شرب كميات كبيرة من الماء مع وجبات خفيفة',
        duration: '2 أسابيع',
        targetWeight: '2-4 كجم',
        difficulty: 'سهل',
        imageUrl: '💧',
        benefits: [
          'تطهير الجسم من السموم',
          'تحسين عملية الهضم',
          'زيادة معدل الحرق',
          'تحسين صحة الجلد'
        ],
        meals: _getWaterDietMeals(),
      ),
      DietPlan(
        id: '12',
        name: 'رجيم البروتين',
        description: 'نظام عالي البروتين لبناء العضلات وحرق الدهون',
        duration: '5 أسابيع',
        targetWeight: '4-8 كجم',
        difficulty: 'متوسط',
        imageUrl: '🥚',
        benefits: [
          'بناء الكتلة العضلية',
          'زيادة معدل الحرق',
          'الشعور بالشبع لفترة أطول',
          'تحسين القوة البدنية'
        ],
        meals: _getProteinDietMeals(),
      ),
      DietPlan(
        id: '13',
        name: 'رجيم التمر واللبن',
        description: 'نظام تقليدي يعتمد على التمر واللبن لفقدان الوزن السريع',
        duration: '1 أسبوع',
        targetWeight: '2-3 كجم',
        difficulty: 'صعب',
        imageUrl: '🥛',
        benefits: [
          'فقدان سريع للوزن',
          'تطهير الجهاز الهضمي',
          'توفير الطاقة الطبيعية',
          'سهولة التطبيق'
        ],
        meals: _getDatesMilkDietMeals(),
      ),
      DietPlan(
        id: '14',
        name: 'رجيم الجريب فروت',
        description: 'نظام يعتمد على الجريب فروت كمحرق طبيعي للدهون',
        duration: '3 أسابيع',
        targetWeight: '3-5 كجم',
        difficulty: 'سهل',
        imageUrl: '🍊',
        benefits: [
          'حرق الدهون بشكل طبيعي',
          'تحسين عملية الأيض',
          'غني بفيتامين سي',
          'مضاد للأكسدة'
        ],
        meals: _getGrapefruitDietMeals(),
      ),
      DietPlan(
        id: '15',
        name: 'رجيم السوبر فود',
        description: 'نظام يركز على الأطعمة الخارقة الغنية بالعناصر الغذائية',
        duration: '6 أسابيع',
        targetWeight: '4-7 كجم',
        difficulty: 'متوسط',
        imageUrl: '🥗',
        benefits: [
          'تعزيز المناعة',
          'مضاد للالتهابات',
          'تحسين صحة القلب',
          'زيادة الطاقة'
        ],
        meals: _getSuperFoodDietMeals(),
      ),
      DietPlan(
        id: '16',
        name: 'رجيم الصحراء',
        description: 'نظام صحراوي يعتمد على الأطعمة البدوية التقليدية',
        duration: '4 أسابيع',
        targetWeight: '3-6 كجم',
        difficulty: 'سهل',
        imageUrl: '🐪',
        benefits: [
          'نظام طبيعي ومجرب',
          'تحسين الهضم',
          'مقاومة الجوع',
          'تقوية الجسم'
        ],
        meals: _getDesertDietMeals(),
      ),
      DietPlan(
        id: '17',
        name: 'رجيم المكسرات',
        description: 'نظام يعتمد على المكسرات كمصدر رئيسي للدهون الصحية',
        duration: '5 أسابيع',
        targetWeight: '2-5 كجم',
        difficulty: 'سهل',
        imageUrl: '🥜',
        benefits: [
          'دهون صحية للقلب',
          'تحسين وظائف الدماغ',
          'الشعور بالشبع',
          'مضاد للالتهابات'
        ],
        meals: _getNutsDietMeals(),
      ),
      DietPlan(
        id: '18',
        name: 'رجيم العصائر الخضراء',
        description: 'نظام تطهير يعتمد على العصائر الخضراء الطازجة',
        duration: '2 أسابيع',
        targetWeight: '2-4 كجم',
        difficulty: 'متوسط',
        imageUrl: '🥬',
        benefits: [
          'تطهير عميق للجسم',
          'زيادة مستويات الطاقة',
          'تحسين صحة الجلد',
          'مضاد قوي للأكسدة'
        ],
        meals: _getGreenJuiceDietMeals(),
      ),
      DietPlan(
        id: '19',
        name: 'رجيم الشوفان',
        description: 'نظام يعتمد على الشوفان كمصدر رئيسي للكربوهيدرات المعقدة',
        duration: '4 أسابيع',
        targetWeight: '3-6 كجم',
        difficulty: 'سهل',
        imageUrl: '🥣',
        benefits: [
          'تحسين صحة القلب',
          'تنظيم مستوى السكر',
          'الشعور بالشبع لفترة طويلة',
          'غني بالألياف'
        ],
        meals: _getOatsDietMeals(),
      ),
      DietPlan(
        id: '20',
        name: 'رجيم الأسماك البحرية',
        description: 'نظام يركز على الأسماك البحرية والمأكولات البحرية',
        duration: '6 أسابيع',
        targetWeight: '4-8 كجم',
        difficulty: 'متوسط',
        imageUrl: '🐠',
        benefits: [
          'غني بأوميجا 3',
          'تحسين صحة الدماغ',
          'مضاد للالتهابات',
          'بروتين عالي الجودة'
        ],
        meals: _getSeafoodDietMeals(),
      ),
    ];
  }

  static List<DayMeal> _getKetoMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'بيض مقلي بالزبدة مع الأفوكادو',
          description: 'وجبة إفطار غنية بالدهون الصحية',
          calories: '400 سعرة',
          ingredients: ['2 بيضة', 'ملعقة زبدة', 'نصف حبة أفوكادو', 'ملح وفلفل'],
          instructions: 'اقلي البيض بالزبدة وقدميه مع شرائح الأفوكادو',
        ),
        lunch: Meal(
          name: 'سلطة السلمون بزيت الزيتون',
          description: 'سلطة مغذية وشهية',
          calories: '450 سعرة',
          ingredients: ['100غ سلمون مشوي', 'خضروات ورقية', '2 ملعقة زيت زيتون', 'جبنة فيتا'],
          instructions: 'اخلطي جميع المكونات وقدميها باردة',
        ),
        dinner: Meal(
          name: 'دجاج مشوي مع البروكلي',
          description: 'وجبة عشاء خفيفة ومشبعة',
          calories: '350 سعرة',
          ingredients: ['150غ دجاج', 'كوب بروكلي', 'زيت زيتون', 'بهارات'],
          instructions: 'اشوي الدجاج واسلقي البروكلي وقدميهما معاً',
        ),
        snacks: [
          Meal(
            name: 'مكسرات مختلطة',
            description: 'سناك صحي',
            calories: '200 سعرة',
            ingredients: ['30غ مكسرات مختلطة'],
            instructions: 'تناولي حفنة صغيرة من المكسرات',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثاني',
        breakfast: Meal(
          name: 'أومليت بالجبنة والسبانخ',
          description: 'إفطار غني بالبروتين والدهون الصحية',
          calories: '380 سعرة',
          ingredients: ['3 بيضات', 'حفنة سبانخ', 'جبنة شيدر', 'زيت زيتون'],
          instructions: 'اخفقي البيض وأضيفي السبانخ والجبنة واطبخي الأومليت',
        ),
        lunch: Meal(
          name: 'سلطة التونة بالأفوكادو',
          description: 'سلطة مشبعة ولذيذة',
          calories: '420 سعرة',
          ingredients: ['علبة تونة', 'حبة أفوكادو', 'خس', 'زيت زيتون', 'ليمون'],
          instructions: 'اخلطي التونة مع الأفوكادو المهروس والخس',
        ),
        dinner: Meal(
          name: 'سمك مشوي مع الكوسا',
          description: 'وجبة خفيفة ومغذية',
          calories: '380 سعرة',
          ingredients: ['150غ سمك', 'كوسا مقطعة', 'زيت زيتون', 'أعشاب'],
          instructions: 'اشوي السمك والكوسا مع الأعشاب والزيت',
        ),
        snacks: [
          Meal(
            name: 'جبنة مع الخيار',
            description: 'سناك منعش',
            calories: '150 سعرة',
            ingredients: ['قطعة جبنة', '2 حبة خيار صغيرة'],
            instructions: 'قطعي الجبنة والخيار وتناوليهما معاً',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثالث',
        breakfast: Meal(
          name: 'بيض مسلوق مع الأفوكادو المهروس',
          description: 'إفطار سريع ومشبع',
          calories: '350 سعرة',
          ingredients: ['2 بيضة مسلوقة', 'حبة أفوكادو', 'ملح', 'فلفل أسود'],
          instructions: 'اسلقي البيض واهرسي الأفوكادو وقدميهما معاً',
        ),
        lunch: Meal(
          name: 'سلطة الدجاج مع الجرجير',
          description: 'سلطة غنية بالبروتين',
          calories: '440 سعرة',
          ingredients: ['150غ دجاج مشوي', 'جرجير', 'طماطم كرزية', 'زيت زيتون'],
          instructions: 'قطعي الدجاج وأضيفيه للجرجير والطماطم',
        ),
        dinner: Meal(
          name: 'كفتة مشوية مع السلطة الخضراء',
          description: 'وجبة لذيذة ومشبعة',
          calories: '400 سعرة',
          ingredients: ['150غ كفتة', 'خضروات ورقية', 'خيار', 'زيت زيتون'],
          instructions: 'اشوي الكفتة وحضري السلطة الخضراء',
        ),
        snacks: [
          Meal(
            name: 'لوز محمص',
            description: 'سناك غني بالدهون الصحية',
            calories: '180 سعرة',
            ingredients: ['25غ لوز محمص'],
            instructions: 'تناولي حفنة من اللوز المحمص',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الرابع',
        breakfast: Meal(
          name: 'سموذي الأفوكادو باللوز',
          description: 'مشروب كريمي ومغذي',
          calories: '420 سعرة',
          ingredients: ['نصف أفوكادو', 'كوب حليب لوز', 'ملعقة زيت جوز الهند', 'ستيفيا'],
          instructions: 'اخلطي جميع المكونات في الخلاط واشربي المزيج',
        ),
        lunch: Meal(
          name: 'سلطة الجمبري مع الخضار',
          description: 'سلطة بحرية لذيذة',
          calories: '380 سعرة',
          ingredients: ['150غ جمبري', 'خضروات مشكلة', 'زيت زيتون', 'ليمون'],
          instructions: 'اسلقي الجمبري واخلطيه مع الخضار والصلصة',
        ),
        dinner: Meal(
          name: 'لحم مشوي مع الباذنجان',
          description: 'وجبة غنية بالبروتين',
          calories: '450 سعرة',
          ingredients: ['150غ لحم', 'باذنجان مقطع', 'زيت زيتون', 'بهارات'],
          instructions: 'اشوي اللحم والباذنجان مع البهارات',
        ),
        snacks: [
          Meal(
            name: 'زيتون أسود وأخضر',
            description: 'سناك مملح ولذيذ',
            calories: '120 سعرة',
            ingredients: ['15 حبة زيتون مختلط'],
            instructions: 'تناولي الزيتون كما هو',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الخامس',
        breakfast: Meal(
          name: 'بيض مخفوق بالجبنة',
          description: 'إفطار كريمي وشهي',
          calories: '390 سعرة',
          ingredients: ['3 بيضات', 'جبنة كريمية', 'زبدة', 'أعشاب'],
          instructions: 'اخفقي البيض وأضيفي الجبنة واطبخي على نار هادئة',
        ),
        lunch: Meal(
          name: 'سلطة السردين مع الخضار',
          description: 'سلطة غنية بالأوميجا 3',
          calories: '410 سعرة',
          ingredients: ['علبة سردين', 'خضروات مشكلة', 'زيت زيتون', 'خل'],
          instructions: 'اخلطي السردين مع الخضار والصلصة',
        ),
        dinner: Meal(
          name: 'فروج مشوي مع الفليفلة',
          description: 'وجبة ملونة ولذيذة',
          calories: '370 سعرة',
          ingredients: ['150غ فروج', 'فليفلة ملونة', 'زيت زيتون', 'روزماري'],
          instructions: 'اشوي الفروج والفليفلة مع الروزماري',
        ),
        snacks: [
          Meal(
            name: 'جوز عين الجمل',
            description: 'سناك غني بالدهون الصحية',
            calories: '200 سعرة',
            ingredients: ['30غ جوز عين الجمل'],
            instructions: 'تناولي حفنة من الجوز',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم السادس',
        breakfast: Meal(
          name: 'شكشوكة بدون خبز',
          description: 'إفطار شرقي لذيذ',
          calories: '360 سعرة',
          ingredients: ['2 بيضة', 'طماطم', 'فليفلة', 'زيت زيتون', 'بهارات'],
          instructions: 'حضري الصلصة واكسري البيض فوقها',
        ),
        lunch: Meal(
          name: 'سلطة الماكريل مع الخضار',
          description: 'سلطة بحرية مغذية',
          calories: '430 سعرة',
          ingredients: ['150غ ماكريل', 'خضروات ورقية', 'زيت زيتون', 'ليمون'],
          instructions: 'اشوي الماكريل وأضيفيه للسلطة',
        ),
        dinner: Meal(
          name: 'كباب مشوي مع الخضار',
          description: 'وجبة شهية ومشبعة',
          calories: '420 سعرة',
          ingredients: ['150غ كباب', 'خضار مشوية', 'زيت زيتون', 'بهارات'],
          instructions: 'اشوي الكباب والخضار معاً',
        ),
        snacks: [
          Meal(
            name: 'بذور دوار الشمس',
            description: 'سناك مقرمش',
            calories: '160 سعرة',
            ingredients: ['25غ بذور دوار الشمس'],
            instructions: 'تناولي البذور المحمصة',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم السابع',
        breakfast: Meal(
          name: 'فطيرة بيض بالسبانخ',
          description: 'إفطار مميز ومغذي',
          calories: '400 سعرة',
          ingredients: ['3 بيضات', 'سبانخ', 'جبنة موتزاريلا', 'زيت زيتون'],
          instructions: 'اخلطي البيض مع السبانخ والجبنة واطبخي كالفطيرة',
        ),
        lunch: Meal(
          name: 'سلطة الروبيان مع الأفوكادو',
          description: 'سلطة فاخرة ولذيذة',
          calories: '450 سعرة',
          ingredients: ['150غ روبيان', 'أفوكادو', 'خضروات مشكلة', 'زيت زيتون'],
          instructions: 'اسلقي الروبيان واخلطيه مع باقي المكونات',
        ),
        dinner: Meal(
          name: 'ستيك مشوي مع الهليون',
          description: 'وجبة فاخرة ومشبعة',
          calories: '480 سعرة',
          ingredients: ['150غ ستيك', 'هليون', 'زيت زيتون', 'ثوم'],
          instructions: 'اشوي الستيك والهليون مع الثوم',
        ),
        snacks: [
          Meal(
            name: 'طحينة بالخيار',
            description: 'سناك كريمي',
            calories: '180 سعرة',
            ingredients: ['ملعقة طحينة', 'خيار مقطع شرائح'],
            instructions: 'اغمسي الخيار في الطحينة',
          ),
        ],
      ),
    ];
  }

  static List<DayMeal> _getMediterraneanMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'خبز الحبوب الكاملة مع زيت الزيتون والطماطم',
          description: 'إفطار متوسطي تقليدي',
          calories: '300 سعرة',
          ingredients: ['شريحة خبز حبوب كاملة', 'ملعقة زيت زيتون', 'طماطم مقطعة', 'قليل من الملح'],
          instructions: 'حمصي الخبز وضعي عليه زيت الزيتون والطماطم',
        ),
        lunch: Meal(
          name: 'سلطة يونانية مع الأسماك',
          description: 'سلطة منعشة ومغذية',
          calories: '400 سعرة',
          ingredients: ['خيار', 'طماطم', 'زيتون', 'جبنة فيتا', '100غ سمك مشوي', 'زيت زيتون'],
          instructions: 'اخلطي جميع المكونات واتركيها تتبل لمدة 10 دقائق',
        ),
        dinner: Meal(
          name: 'سمك مشوي مع الخضار',
          description: 'وجبة صحية ولذيذة',
          calories: '450 سعرة',
          ingredients: ['150غ سمك', 'كوسا', 'باذنجان', 'طماطم', 'زيت زيتون', 'أعشاب'],
          instructions: 'اشوي السمك والخضار مع زيت الزيتون والأعشاب',
        ),
        snacks: [
          Meal(
            name: 'زيتون وجبنة',
            description: 'سناك متوسطي',
            calories: '150 سعرة',
            ingredients: ['10 حبات زيتون', '30غ جبنة'],
            instructions: 'تناولي الزيتون والجبنة كسناك خفيف',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثاني',
        breakfast: Meal(
          name: 'يوغورت يوناني مع العسل والجوز',
          description: 'إفطار غني بالبروتين',
          calories: '350 سعرة',
          ingredients: ['كوب يوغورت يوناني', 'ملعقة عسل', 'جوز مقطع', 'قرفة'],
          instructions: 'اخلطي اليوغورت مع العسل وزيني بالجوز والقرفة',
        ),
        lunch: Meal(
          name: 'سلطة التونة مع الحمص',
          description: 'سلطة مشبعة ومغذية',
          calories: '420 سعرة',
          ingredients: ['علبة تونة', 'حمص مسلوق', 'بصل أحمر', 'بقدونس', 'زيت زيتون', 'ليمون'],
          instructions: 'اخلطي جميع المكونات واتركيها تتبل',
        ),
        dinner: Meal(
          name: 'دجاج مشوي مع الأرز البني',
          description: 'وجبة متوازنة ولذيذة',
          calories: '480 سعرة',
          ingredients: ['150غ دجاج', 'نصف كوب أرز بني', 'خضروات مشكلة', 'زيت زيتون'],
          instructions: 'اشوي الدجاج واطبخي الأرز مع الخضروات',
        ),
        snacks: [
          Meal(
            name: 'تين مجفف مع اللوز',
            description: 'سناك حلو وصحي',
            calories: '200 سعرة',
            ingredients: ['3 حبات تين مجفف', '15 حبة لوز'],
            instructions: 'تناولي التين مع اللوز كسناك طبيعي',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثالث',
        breakfast: Meal(
          name: 'عصيدة الشوفان بالفواكه',
          description: 'إفطار مغذي ومشبع',
          calories: '320 سعرة',
          ingredients: ['نصف كوب شوفان', 'كوب حليب', 'توت أزرق', 'عسل', 'قرفة'],
          instructions: 'اطبخي الشوفان بالحليب وزيني بالتوت والعسل',
        ),
        lunch: Meal(
          name: 'سلطة الفتوش مع الدجاج',
          description: 'سلطة شرقية منعشة',
          calories: '400 سعرة',
          ingredients: ['خضروات مشكلة', 'خبز محمص', '100غ دجاج', 'زيت زيتون', 'سماق'],
          instructions: 'حضري الفتوش وأضيفي الدجاج المشوي',
        ),
        dinner: Meal(
          name: 'سمك السلمون مع الكينوا',
          description: 'وجبة غنية بالأوميجا 3',
          calories: '450 سعرة',
          ingredients: ['150غ سلمون', 'كينوا', 'بروكلي', 'زيت زيتون', 'ليمون'],
          instructions: 'اشوي السلمون واطبخي الكينوا مع البروكلي',
        ),
        snacks: [
          Meal(
            name: 'حمص بالطحينة',
            description: 'سناك بروتيني',
            calories: '180 سعرة',
            ingredients: ['3 ملاعق حمص', 'خيار وجزر مقطع'],
            instructions: 'اغمسي الخضار في الحمص',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الرابع',
        breakfast: Meal(
          name: 'توست الأفوكادو مع البيض',
          description: 'إفطار عصري ومغذي',
          calories: '380 سعرة',
          ingredients: ['شريحة خبز حبوب كاملة', 'نصف أفوكادو', 'بيضة', 'طماطم كرزية'],
          instructions: 'حمصي الخبز واهرسي الأفوكادو وضعي البيض المسلوق',
        ),
        lunch: Meal(
          name: 'سلطة الكابريزي مع الروبيان',
          description: 'سلطة إيطالية أنيقة',
          calories: '420 سعرة',
          ingredients: ['موتزاريلا', 'طماطم', 'ريحان', '100غ روبيان', 'زيت زيتون'],
          instructions: 'رتبي الجبنة والطماطم وأضيفي الروبيان والريحان',
        ),
        dinner: Meal(
          name: 'كوسا محشية بالأرز',
          description: 'وجبة شرقية تقليدية',
          calories: '400 سعرة',
          ingredients: ['كوسا مفرغة', 'أرز', 'لحمة مفرومة', 'طماطم', 'بهارات'],
          instructions: 'احشي الكوسا بالأرز واللحمة واطبخيها بالطماطم',
        ),
        snacks: [
          Meal(
            name: 'تمر مع الجوز',
            description: 'سناك طبيعي وحلو',
            calories: '160 سعرة',
            ingredients: ['3 حبات تمر', '6 حبات جوز'],
            instructions: 'تناولي التمر مع الجوز',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الخامس',
        breakfast: Meal(
          name: 'فطيرة السبانخ بالجبنة',
          description: 'إفطار شرقي لذيذ',
          calories: '340 سعرة',
          ingredients: ['عجينة فطيرة', 'سبانخ', 'جبنة فيتا', 'بصل', 'زيت زيتون'],
          instructions: 'حضري الحشوة واخبزي الفطيرة',
        ),
        lunch: Meal(
          name: 'سلطة البرغل مع الخضار',
          description: 'سلطة مشبعة وصحية',
          calories: '380 سعرة',
          ingredients: ['برغل', 'طماطم', 'بقدونس', 'نعناع', 'بصل أخضر', 'زيت زيتون'],
          instructions: 'انقعي البرغل واخلطيه مع الخضار',
        ),
        dinner: Meal(
          name: 'سمك مشوي مع البطاطس',
          description: 'وجبة بحرية تقليدية',
          calories: '460 سعرة',
          ingredients: ['150غ سمك', 'بطاطس', 'زيت زيتون', 'ليمون', 'أعشاب'],
          instructions: 'اشوي السمك والبطاطس مع الأعشاب',
        ),
        snacks: [
          Meal(
            name: 'لبنة بالزيتون',
            description: 'سناك كريمي',
            calories: '170 سعرة',
            ingredients: ['لبنة', 'زيتون أسود', 'خيار'],
            instructions: 'قدمي اللبنة مع الزيتون والخيار',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم السادس',
        breakfast: Meal(
          name: 'سموذي الفواكه مع الشوفان',
          description: 'إفطار منعش ومغذي',
          calories: '320 سعرة',
          ingredients: ['موز', 'توت', 'شوفان', 'حليب', 'عسل'],
          instructions: 'اخلطي جميع المكونات في الخلاط',
        ),
        lunch: Meal(
          name: 'سلطة العدس مع الخضار',
          description: 'سلطة غنية بالبروتين',
          calories: '390 سعرة',
          ingredients: ['عدس أحمر', 'خيار', 'طماطم', 'بصل', 'زيت زيتون', 'خل'],
          instructions: 'اسلقي العدس واخلطيه مع الخضار',
        ),
        dinner: Meal(
          name: 'باستا بالخضار والسمك',
          description: 'وجبة إيطالية صحية',
          calories: '480 سعرة',
          ingredients: ['باستا حبوب كاملة', 'كوسا', 'باذنجان', 'سمك', 'زيت زيتون'],
          instructions: 'اطبخي الباستا واقليها مع الخضار والسمك',
        ),
        snacks: [
          Meal(
            name: 'زبيب مع الجوز',
            description: 'سناك طاقة طبيعي',
            calories: '180 سعرة',
            ingredients: ['زبيب', 'جوز مقطع'],
            instructions: 'امزجي الزبيب مع الجوز',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم السابع',
        breakfast: Meal(
          name: 'مناقيش الزعتر مع الجبنة',
          description: 'إفطار شامي تقليدي',
          calories: '360 سعرة',
          ingredients: ['خبز مناقيش', 'زعتر', 'زيت زيتون', 'جبنة بيضاء', 'طماطم'],
          instructions: 'حمصي المناقيش وقدميها مع الجبنة والطماطم',
        ),
        lunch: Meal(
          name: 'سلطة الجرجير مع الرمان',
          description: 'سلطة فاخرة ولذيذة',
          calories: '350 سعرة',
          ingredients: ['جرجير', 'رمان', 'جبنة ماعز', 'جوز', 'زيت زيتون'],
          instructions: 'اخلطي الجرجير مع الرمان والجبنة والجوز',
        ),
        dinner: Meal(
          name: 'مسقعة بالباذنجان',
          description: 'وجبة نباتية شهية',
          calories: '420 سعرة',
          ingredients: ['باذنجان', 'طماطم', 'بصل', 'ثوم', 'زيت زيتون', 'بقدونس'],
          instructions: 'اقلي الباذنجان واطبخيه مع الطماطم والبصل',
        ),
        snacks: [
          Meal(
            name: 'قطايف صغيرة بالجبنة',
            description: 'سناك حلو تقليدي',
            calories: '200 سعرة',
            ingredients: ['قطايف صغيرة', 'جبنة حلوة', 'شراب خفيف'],
            instructions: 'احشي القطايف بالجبنة واقليها واغمسيها بالشراب',
          ),
        ],
      ),
    ];
  }

  static List<DayMeal> _getIntermittentFastingMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول - نافذة الأكل 12-8',
        breakfast: Meal(
          name: 'فطر أول الساعة 12 ظهراً',
          description: 'أول وجبة بعد الصيام',
          calories: '500 سعرة',
          ingredients: ['2 بيضة', 'خبز أسمر', 'أفوكادو', 'طماطم'],
          instructions: 'ابدئي بوجبة متوازنة لكسر الصيام بلطف',
        ),
        lunch: Meal(
          name: 'غداء الساعة 3 عصراً',
          description: 'وجبة رئيسية مشبعة',
          calories: '600 سعرة',
          ingredients: ['150غ دجاج', 'أرز بني', 'خضار مشكلة', 'سلطة'],
          instructions: 'وجبة كاملة العناصر الغذائية',
        ),
        dinner: Meal(
          name: 'عشاء الساعة 7 مساءً',
          description: 'آخر وجبة قبل الصيام',
          calories: '400 سعرة',
          ingredients: ['سمك مشوي', 'خضار سوتيه', 'سلطة خضراء'],
          instructions: 'وجبة خفيفة وصحية قبل بدء الصيام',
        ),
        snacks: [
          Meal(
            name: 'فواكه ومكسرات',
            description: 'سناك صحي بين الوجبات',
            calories: '200 سعرة',
            ingredients: ['تفاحة', '20غ لوز'],
            instructions: 'تناولي فقط خلال نافذة الأكل',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثاني - نافذة الأكل 12-8',
        breakfast: Meal(
          name: 'عصيدة الشوفان بالفواكه',
          description: 'وجبة إفطار غنية بالألياف',
          calories: '450 سعرة',
          ingredients: ['نصف كوب شوفان', 'كوب حليب لوز', 'موز', 'توت', 'عسل'],
          instructions: 'اطبخي الشوفان بالحليب وزينيه بالفواكه',
        ),
        lunch: Meal(
          name: 'سلطة الكينوا بالخضار',
          description: 'غداء نباتي متوازن',
          calories: '500 سعرة',
          ingredients: ['كوب كينوا مطبوخة', 'خيار', 'طماطم', 'جزر', 'حمص'],
          instructions: 'اخلطي جميع المكونات مع تتبيلة زيت الزيتون والليمون',
        ),
        dinner: Meal(
          name: 'عدس بالخضار',
          description: 'وجبة عشاء دافئة ومغذية',
          calories: '400 سعرة',
          ingredients: ['كوب عدس', 'جزر', 'كرفس', 'بصل', 'طماطم'],
          instructions: 'اطبخي العدس مع الخضار حتى ينضج',
        ),
        snacks: [
          Meal(
            name: 'فواكه مجففة ومكسرات',
            description: 'سناك طبيعي وصحي',
            calories: '180 سعرة',
            ingredients: ['تمر', 'لوز', 'جوز'],
            instructions: 'تناولي حصة صغيرة كسناك بين الوجبات',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثالث - نافذة الأكل 12-8',
        breakfast: Meal(
          name: 'سموذي البروتين بالفواكه',
          description: 'وجبة إفطار غنية بالبروتين',
          calories: '400 سعرة',
          ingredients: ['موز', 'حليب لوز', 'مسحوق بروتين نباتي', 'سبانخ'],
          instructions: 'اخلطي جميع المكونات في الخلاط واشربيها',
        ),
        lunch: Meal(
          name: 'سلطة التونة مع الأفوكادو',
          description: 'غداء مشبع وصحي',
          calories: '450 سعرة',
          ingredients: ['علبة تونة', 'أفوكادو', 'خضار مشكلة', 'زيت زيتون'],
          instructions: 'اخلطي التونة مع الأفوكادو والخضار وقدميها باردة',
        ),
        dinner: Meal(
          name: 'دجاج مشوي مع البروكلي',
          description: 'وجبة عشاء خفيفة ومغذية',
          calories: '350 سعرة',
          ingredients: ['150غ دجاج', 'كوب بروكلي مطبوخ', 'زيت زيتون'],
          instructions: 'اشوي الدجاج وقدميه مع البروكلي المطبوخ على البخار',
        ),
        snacks: [
          Meal(
            name: 'زبادي يوناني مع العسل',
            description: 'سناك غني بالبروتين',
            calories: '200 سعرة',
            ingredients: ['كوب زبادي يوناني', 'ملعقة عسل'],
            instructions: 'امزجي الزبادي مع العسل وتناوليها كسناك بين الوجبات',
          ),
        ],
    
    ),
    DayMeal(
      day: 'اليوم الرابع - نافذة الأكل 12-8',
      breakfast: Meal(
        name: 'عصيدة الشوفان بالفواكه',
        description: 'وجبة إفطار غنية بالألياف',
        calories: '450 سعرة',
        ingredients: ['نصف كوب شوفان', 'كوب حليب لوز', 'موز', 'توت', 'عسل'],
        instructions: 'اطبخي الشوفان بالحليب وزينيه بالفواكه',
      ),
      lunch: Meal(
        name: 'سلطة الكينوا بالخضار',
        description: 'غداء نباتي متوازن',
        calories: '500 سعرة',
        ingredients: ['كوب كينوا مطبوخة', 'خيار', 'طماطم', 'جزر', 'حمص'],
        instructions: 'اخلطي جميع المكونات مع تتبيلة زيت الزيتون والليمون',
      ),
      dinner: Meal(
        name: 'عدس بالخضار',
        description: 'وجبة عشاء دافئة ومغذية',
        calories: '400 سعرة',
        ingredients: ['كوب عدس', 'جزر', 'كرفس', 'بصل', 'طماطم'],
        instructions: 'اطبخي العدس مع الخضار حتى ينضج',
      ),
      snacks: [
        Meal(
          name: 'فواكه مجففة ومكسرات',
          description: 'سناك طبيعي وصحي',
          calories: '180 سعرة',
          ingredients: ['تمر', 'لوز', 'جوز'],
          instructions: 'تناولي حصة صغيرة كسناك بين الوجبات',
        ),
      ],
    ),
    DayMeal(
      day: 'اليوم الخامس - نافذة الأكل 12-8',
      breakfast: Meal(
        name: 'عصيدة الشوفان بالمكسرات',
        description: 'وجبة إفطار غنية بالألياف',
        calories: '450 سعرة',
        ingredients: ['نصف كوب شوفان', 'كوب حليب لوز', 'موز', 'لوز', 'عسل'],
        instructions: 'اطبخي الشوفان بالحليب وزينيه بالمكسرات',
      ),
      lunch: Meal(
        name: 'سلطة الكينوا بالفواكه',
        description: 'غداء نباتي متوازن',
        calories: '500 سعرة',
        ingredients: ['كوب كينوا مطبوخة', 'فواكه مشكلة', 'عسل'],
        instructions: 'اخلطي جميع المكونات مع تتبيلة زيت الزيتون والليمون',
      ),
      dinner: Meal(
        name: 'عدس بالخضار',
        description: 'وجبة عشاء دافئة ومغذية',
        calories: '400 سعرة',
        ingredients: ['كوب عدس', 'جزر', 'كرفس', 'بصل', 'طماطم'],
        instructions: 'اطبخي العدس مع الخضار حتى ينضج',
      ),
      snacks: [
        Meal(
          name: 'فواكه مجففة ومكسرات',
          description: 'سناك طبيعي وصحي',
          calories: '180 سعرة',
          ingredients: ['تمر', 'لوز', 'جوز'],
          instructions: 'تناولي حصة صغيرة كسناك بين الوجبات',
        ),
      ],
    ),
    DayMeal(
      day: 'اليوم السادس - نافذة الأكل 12-8',
      breakfast: Meal(
        name: 'عصيدة الشوفان بالفواكه',
        description: 'وجبة إفطار غنية بالألياف',
        calories: '450 سعرة',
        ingredients: ['نصف كوب شوفان', 'كوب حليب لوز', 'موز', 'توت', 'عسل'],
        instructions: 'اطبخي الشوفان بالحليب وزينيه بالفواكه',
      ),
      lunch: Meal(
        name: 'سلطة الكينوا بالخضار',
        description: 'غداء نباتي متوازن',
        calories: '500 سعرة',
        ingredients: ['كوب كينوا مطبوخة', 'خيار', 'طماطم', 'جزر', 'حمص'],
        instructions: 'اخلطي جميع المكونات مع تتبيلة زيت الزيتون والليمون',
      ),
      dinner: Meal(
        name: 'عدس بالخضار',
        description: 'وجبة عشاء دافئة ومغذية',
        calories: '400 سعرة',
        ingredients: ['كوب عدس', 'جزر', 'كرفس', 'بصل', 'طماطم'],
        instructions: 'اطبخي العدس مع الخضار حتى ينضج',
      ),
      snacks: [
        Meal(
          name: 'فواكه مجففة ومكسرات',
          description: 'سناك طبيعي وصحي',
          calories: '180 سعرة',
          ingredients: ['تمر', 'لوز', 'جوز'],
          instructions: 'تناولي حصة صغيرة كسناك بين الوجبات',
        ),
      ],
    ),
    DayMeal(
      day: 'اليوم السابع - نافذة الأكل 12-8',
      breakfast: Meal(
        name: 'عصيدة الشوفان بالفواكه',
        description: 'وجبة إفطار غنية بالألياف',
        calories: '450 سعرة',
        ingredients: ['نصف كوب شوفان', 'كوب حليب لوز', 'موز', 'توت', 'عسل'],
        instructions: 'اطبخي الشوفان بالحليب وزينيه بالفواكه',
      ),
      lunch: Meal(
        name: 'سلطة الكينوا بالخضار',
        description: 'غداء نباتي متوازن',
        calories: '500 سعرة',
        ingredients: ['كوب كينوا مطبوخة', 'خيار', 'طماطم', 'جزر', 'حمص'],
        instructions: 'اخلطي جميع المكونات مع تتبيلة زيت الزيتون والليمون',
      ),
      dinner: Meal(
        name: 'عدس بالخضار',
        description: 'وجبة عشاء دافئة ومغذية',
        calories: '400 سعرة',
        ingredients: ['كوب عدس', 'جزر', 'كرفس', 'بصل', 'طماطم'],
        instructions: 'اطبخي العدس مع الخضار حتى ينضج',
      ),
      snacks: [
        Meal(
          name: 'فواكه مجففة ومكسرات',
          description: 'سناك طبيعي وصحي',
          calories: '180 سعرة',
          ingredients: ['تمر', 'لوز', 'جوز'],
          instructions: 'تناولي حصة صغيرة كسناك بين الوجبات',
        ),
      ],
    ),
  ];
  }
  static List<DayMeal> _getVeganMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'عصيدة الشوفان بالفواكه',
          description: 'إفطار نباتي مغذي',
          calories: '350 سعرة',
          ingredients: ['نصف كوب شوفان', 'حليب لوز', 'موز', 'توت', 'عسل طبيعي'],
          instructions: 'اطبخي الشوفان بحليب اللوز وزينيه بالفواكه',
        ),
        lunch: Meal(
          name: 'سلطة الكينوا بالخضار',
          description: 'غداء نباتي متكامل',
          calories: '450 سعرة',
          ingredients: ['كوب كينوا مطبوخة', 'خيار', 'طماطم', 'جزر', 'حمص', 'تتبيلة الطحينة'],
          instructions: 'اخلطي جميع المكونات مع تتبيلة الطحينة',
        ),
        dinner: Meal(
          name: 'عدس بالخضار',
          description: 'عشاء نباتي دافئ',
          calories: '400 سعرة',
          ingredients: ['كوب عدس', 'جزر', 'كرفس', 'بصل', 'طماطم', 'بهارات'],
          instructions: 'اطبخي العدس مع الخضار والبهارات حتى ينضج',
        ),
        snacks: [
          Meal(
            name: 'فواكه مجففة ومكسرات',
            description: 'سناك نباتي طبيعي',
            calories: '180 سعرة',
            ingredients: ['تمر', 'لوز', 'جوز'],
            instructions: 'تناولي حصة صغيرة كسناك',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثاني',
        breakfast: Meal(
          name: 'توست الأفوكادو مع الطماطم',
          description: 'إفطار نباتي لذيذ',
          calories: '300 سعرة',
          ingredients: ['شريحة خبز حبوب كاملة', 'نصف أفوكادو', 'طماطم', 'عصير ليمون'],
          instructions: 'حمصي الخبز واهرسي الأفوكادو وضعي الطماطم فوقه',
        ),
        lunch: Meal(
          name: 'سلطة الفاصوليا السوداء',
          description: 'غداء غني بالبروتين النباتي',
          calories: '400 سعرة',
          ingredients: ['فاصوليا سوداء مسلوقة', 'فلفل رومي', 'بصل أحمر', 'كزبرة', 'ليمون'],
          instructions: 'اخلطي جميع المكونات وقدميها باردة',
        ),
        dinner: Meal(
          name: 'كاري الخضار مع الأرز البني',
          description: 'عشاء دافئ ومشبع',
          calories: '450 سعرة',
          ingredients: ['خضار مشكلة', 'حليب جوز الهند', 'بهارات كاري', 'أرز بني'],
          instructions: 'اطبخي الخضار مع حليب جوز الهند والبهارات وقدميها مع الأرز البني',
        ),
        snacks: [
          Meal(
            name: 'حمص بالطحينة مع الخضار',
            description: 'سناك نباتي صحي',
            calories: '200 سعرة',
            ingredients: ['حمص مسلوق', 'طحينة', 'خيار وجزر مقطع'],
            instructions: 'اغمسي الخضار في الحمص بالطحينة',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثالث',
        breakfast: Meal(
          name: 'سموذي الفواكه بالخضار الورقية',
          description: 'إفطار نباتي غني بالفيتامينات',
          calories: '320 سعرة',
          ingredients: ['موز', 'سبانخ', 'تفاح', 'حليب لوز', 'بذور شيا'],
          instructions: 'اخلطي جميع المكونات في الخلاط واشربي فوراً',
        ),
        lunch: Meal(
          name: 'برجر الفاصوليا السوداء',
          description: 'غداء نباتي غني بالبروتين',
          calories: '420 سعرة',
          ingredients: ['فاصوليا سوداء مطبوخة', 'بصل', 'ثوم', 'بهارات', 'خبز حبوب كاملة'],
          instructions: 'اهرسي الفاصوليا وامزجيها مع باقي المكونات واصنعي البرجر',
        ),
        dinner: Meal(
          name: 'شوربة العدس بالخضار',
          description: 'عشاء دافئ ومشبع',
          calories: '380 سعرة',
          ingredients: ['عدس', 'جزر', 'بطاطا', 'كرفس', 'بصل', 'بهارات'],
          instructions: 'اطبخي العدس مع الخضار حتى ينضج',
        ),
        snacks: [
          Meal(
            name: 'جزر وخيار مع حمص',
            description: 'سناك نباتي خفيف',
            calories: '120 سعرة',
            ingredients: ['جزر مقطع', 'خيار مقطع', 'حمص مهروس'],
            instructions: 'اغمسي الخضار في الحمص وتناوليها كسناك',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الرابع',
        breakfast: Meal(
          name: 'توست الحبوب الكاملة بزبدة الفول السوداني والموز',
          description: 'إفطار نباتي غني بالطاقة',
          calories: '350 سعرة',
          ingredients: ['شريحة خبز حبوب كاملة', 'ملعقة زبدة فول سوداني', 'موزة مقطعة'],
          instructions: 'ادهني التوست بزبدة الفول السوداني وضعي شرائح الموز فوقها',
        ),
        lunch: Meal(
          name: 'سلطة الحمص مع الخضار',
          description: 'غداء نباتي متكامل',
          calories: '400 سعرة',
          ingredients: ['حمص مسلوق', 'طماطم', 'خيار', 'بقدونس', 'زيت زيتون', 'ليمون'],
          instructions: 'اخلطي جميع المكونات مع التتبيلة',
        ),
        dinner: Meal(
          name: 'كاري البطاطا الحلوة والسبانخ',
          description: 'عشاء نباتي دافئ',
          calories: '420 سعرة',
          ingredients: ['بطاطا حلوة', 'سبانخ', 'حليب جوز الهند', 'بهارات كاري'],
          instructions: 'اطبخي البطاطا مع السبانخ وحليب جوز الهند والبهارات',
        ),
        snacks: [
          Meal(
            name: 'تفاح مع لوز',
            description: 'سناك نباتي غني بالألياف',
            calories: '150 سعرة',
            ingredients: ['تفاحة مقطعة', '10 حبات لوز'],
            instructions: 'تناولي التفاح مع اللوز كسناك',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الخامس',
        breakfast: Meal(
          name: 'شوفان بالحليب النباتي والفواكه المجففة',
          description: 'إفطار نباتي غني بالألياف',
          calories: '340 سعرة',
          ingredients: ['نصف كوب شوفان', 'حليب لوز', 'زبيب', 'مشمش مجفف', 'قرفة'],
          instructions: 'اطبخي الشوفان بالحليب وأضيفي الفواكه المجففة والقرفة',
        ),
        lunch: Meal(
          name: 'سلطة الكينوا مع الفاصوليا الحمراء',
          description: 'غداء نباتي غني بالبروتين',
          calories: '420 سعرة',
          ingredients: ['كينوا مطبوخة', 'فاصوليا حمراء', 'ذرة', 'فلفل رومي', 'بصل أخضر', 'ليمون'],
          instructions: 'اخلطي جميع المكونات مع عصير الليمون',
        ),
        dinner: Meal(
          name: 'شوربة الخضار مع الشعير',
          description: 'عشاء نباتي دافئ ومشبع',
          calories: '380 سعرة',
          ingredients: ['شعير', 'جزر', 'كوسا', 'بصل', 'كرفس', 'بهارات'],
          instructions: 'اطبخي الشعير مع الخضار حتى ينضج',
        ),
        snacks: [
          Meal(
            name: 'موز مع زبدة الفول السوداني',
            description: 'سناك نباتي غني بالطاقة',
            calories: '160 سعرة',
            ingredients: ['موزة', 'ملعقة صغيرة زبدة فول سوداني'],
            instructions: 'قطعي الموز وادهنيه بزبدة الفول السوداني',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم السادس',
        breakfast: Meal(
          name: 'سموذي الشوفان بالفراولة',
          description: 'إفطار نباتي منعش',
          calories: '330 سعرة',
          ingredients: ['شوفان', 'فراولة', 'موز', 'حليب لوز', 'عسل'],
          instructions: 'اخلطي جميع المكونات في الخلاط واشربي فوراً',
        ),
        lunch: Meal(
          name: 'برغر العدس مع سلطة خضراء',
          description: 'غداء نباتي غني بالبروتين',
          calories: '410 سعرة',
          ingredients: ['عدس مطبوخ', 'بصل', 'ثوم', 'بهارات', 'خبز حبوب كاملة', 'خس', 'طماطم'],
          instructions: 'اهرسي العدس وامزجيه مع باقي المكونات واصنعي البرغر',
        ),
        dinner: Meal(
          name: 'كاري الحمص مع الأرز البني',
          description: 'عشاء نباتي دافئ',
          calories: '420 سعرة',
          ingredients: ['حمص مسلوق', 'خضار مشكلة', 'حليب جوز الهند', 'بهارات كاري', 'أرز بني'],
          instructions: 'اطبخي الحمص مع الخضار وحليب جوز الهند والبهارات وقدميه مع الأرز',
        ),
        snacks: [
          Meal(
            name: 'تمر مع جوز',
            description: 'سناك نباتي طبيعي',
            calories: '140 سعرة',
            ingredients: ['3 تمرات', '6 حبات جوز'],
            instructions: 'تناولي التمر مع الجوز كسناك',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم السابع',
        breakfast: Meal(
          name: 'توست الحبوب الكاملة مع زبدة اللوز والموز',
          description: 'إفطار نباتي غني بالطاقة',
          calories: '350 سعرة',
          ingredients: ['شريحة خبز حبوب كاملة', 'ملعقة زبدة لوز', 'موزة مقطعة'],
          instructions: 'ادهني التوست بزبدة اللوز وضعي شرائح الموز فوقها',
        ),
        lunch: Meal(
          name: 'سلطة الفتوش النباتية',
          description: 'غداء نباتي شرقي',
          calories: '400 سعرة',
          ingredients: ['خضار مشكلة', 'خبز محمص', 'زيت زيتون', 'سماق', 'ليمون'],
          instructions: 'اخلطي جميع المكونات مع التتبيلة',
        ),
        dinner: Meal(
          name: 'شوربة البطاطا الحلوة والجزر',
          description: 'عشاء نباتي دافئ',
          calories: '380 سعرة',
          ingredients: ['بطاطا حلوة', 'جزر', 'بصل', 'مرق خضار', 'بهارات'],
          instructions: 'اطبخي البطاطا والجزر مع المرق واهرسي الشوربة',
        ),
        snacks: [
          Meal(
            name: 'فواكه مشكلة',
            description: 'سناك نباتي منعش',
            calories: '120 سعرة',
            ingredients: ['تفاح', 'برتقال', 'كيوي', 'عنب'],
            instructions: 'قطعي الفواكه وتناوليها كسناك',
          ),
        ],
      ),
    ];
  }

  static List<DayMeal> _getDukanMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول - مرحلة الهجوم',
        breakfast: Meal(
          name: 'بيض مسلوق مع الدجاج',
          description: 'بروتين خالص للمرحلة الأولى',
          calories: '300 سعرة',
          ingredients: ['2 بيضة مسلوقة', '50غ دجاج مسلوق', 'قليل من الملح'],
          instructions: 'بروتين فقط، لا كربوهيدرات أو دهون',
        ),
        lunch: Meal(
          name: 'سمك مشوي',
          description: 'بروتين بحري نقي',
          calories: '350 سعرة',
          ingredients: ['200غ سمك أبيض', 'بهارات', 'ليمون'],
          instructions: 'اشوي السمك بدون زيت مع البهارات',
        ),
        dinner: Meal(
          name: 'دجاج مسلوق',
          description: 'بروتين خالي من الدهون',
          calories: '300 سعرة',
          ingredients: ['150غ صدر دجاج منزوع الجلد', 'أعشاب'],
          instructions: 'اسلقي الدجاج مع الأعشاب للنكهة',
        ),
        snacks: [
          Meal(
            name: 'زبادي خالي الدسم',
            description: 'بروتين سائل',
            calories: '100 سعرة',
            ingredients: ['كوب زبادي خالي الدسم طبيعي'],
            instructions: 'تناولي بدون إضافات',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثاني - مرحلة الهجوم',
        breakfast: Meal(
          name: 'زبادي خالي الدسم مع شرائح الديك الرومي',
          description: 'إفطار بروتيني خالص',
          calories: '280 سعرة',
          ingredients: ['كوب زبادي خالي الدسم', '50غ شرائح ديك رومي مدخن'],
          instructions: 'تناولي الزبادي مع شرائح الديك الرومي',
        ),
        lunch: Meal(
          name: 'سمك تونة مع البيض المسلوق',
          description: 'غداء غني بالبروتين',
          calories: '350 سعرة',
          ingredients: ['علبة تونة مصفاة', '2 بيضة مسلوقة', 'قليل من الملح'],
          instructions: 'اخلطي التونة مع البيض وتناوليها',
        ),
        dinner: Meal(
          name: 'دجاج مشوي مع الأعشاب',
          description: 'عشاء بروتيني خفيف',
          calories: '320 سعرة',
          ingredients: ['150غ صدر دجاج مشوي', 'أعشاب طازجة'],
          instructions: 'اشوي الدجاج مع الأعشاب بدون زيت',
        ),
        snacks: [
          Meal(
            name: 'جبنة قريش قليلة الدسم',
            description: 'سناك بروتيني',
            calories: '90 سعرة',
            ingredients: ['50غ جبنة قريش قليلة الدسم'],
            instructions: 'تناوليها كسناك بين الوجبات',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثالث - مرحلة الهجوم',
        breakfast: Meal(
          name: 'بيض أومليت مع شرائح السلمون',
          description: 'إفطار غني بالبروتين البحري',
          calories: '320 سعرة',
          ingredients: ['2 بيضة', '40غ سلمون مدخن', 'قليل من الشبت'],
          instructions: 'اخفقي البيض واقليه مع السلمون والشبت',
        ),
        lunch: Meal(
          name: 'لحم بقري مشوي',
          description: 'غداء بروتيني صافي',
          calories: '370 سعرة',
          ingredients: ['150غ لحم بقري خالي من الدهن', 'بهارات'],
          instructions: 'اشوي اللحم مع البهارات فقط',
        ),
        dinner: Meal(
          name: 'سمك أبيض مسلوق',
          description: 'عشاء خفيف وسهل الهضم',
          calories: '300 سعرة',
          ingredients: ['150غ سمك أبيض', 'أعشاب'],
          instructions: 'اسلقي السمك مع الأعشاب',
        ),
        snacks: [
          Meal(
            name: 'زبادي خالي الدسم',
            description: 'سناك بروتيني خفيف',
            calories: '100 سعرة',
            ingredients: ['كوب زبادي خالي الدسم'],
            instructions: 'تناولي الزبادي بين الوجبات',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الرابع - مرحلة الهجوم',
        breakfast: Meal(
          name: 'بيض مسلوق مع شرائح الدجاج',
          description: 'إفطار بروتيني مشبع',
          calories: '300 سعرة',
          ingredients: ['2 بيضة مسلوقة', '50غ دجاج مسلوق'],
          instructions: 'تناولي البيض مع شرائح الدجاج',
        ),
        lunch: Meal(
          name: 'سمك مشوي مع الأعشاب',
          description: 'غداء بحري صحي',
          calories: '350 سعرة',
          ingredients: ['150غ سمك أبيض', 'أعشاب', 'ليمون'],
          instructions: 'اشوي السمك مع الأعشاب والليمون',
        ),
        dinner: Meal(
          name: 'دجاج مسلوق مع الأعشاب',
          description: 'عشاء بروتيني خفيف',
          calories: '300 سعرة',
          ingredients: ['120غ صدر دجاج', 'أعشاب'],
          instructions: 'اسلقي الدجاج مع الأعشاب',
        ),
        snacks: [
          Meal(
            name: 'جبنة قريش قليلة الدسم',
            description: 'سناك بروتيني',
            calories: '90 سعرة',
            ingredients: ['50غ جبنة قريش قليلة الدسم'],
            instructions: 'تناوليها كسناك بين الوجبات',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الخامس - مرحلة الهجوم',
        breakfast: Meal(
          name: 'بيض أومليت مع شرائح الديك الرومي',
          description: 'إفطار بروتيني متنوع',
          calories: '310 سعرة',
          ingredients: ['2 بيضة', '40غ ديك رومي مدخن'],
          instructions: 'اخفقي البيض واقليه مع الديك الرومي',
        ),
        lunch: Meal(
          name: 'سمك تونة مع البيض المسلوق',
          description: 'غداء غني بالبروتين',
          calories: '350 سعرة',
          ingredients: ['علبة تونة مصفاة', '2 بيضة مسلوقة'],
          instructions: 'اخلطي التونة مع البيض وتناوليها',
        ),
        dinner: Meal(
          name: 'دجاج مشوي مع الأعشاب',
          description: 'عشاء بروتيني خفيف',
          calories: '320 سعرة',
          ingredients: ['120غ صدر دجاج مشوي', 'أعشاب'],
          instructions: 'اشوي الدجاج مع الأعشاب بدون زيت',
        ),
        snacks: [
          Meal(
            name: 'زبادي خالي الدسم',
            description: 'سناك بروتيني خفيف',
            calories: '100 سعرة',
            ingredients: ['كوب زبادي خالي الدسم'],
            instructions: 'تناولي الزبادي بين الوجبات',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم السادس - مرحلة الهجوم',
        breakfast: Meal(
          name: 'بيض مسلوق مع شرائح السلمون',
          description: 'إفطار غني بالبروتين البحري',
          calories: '320 سعرة',
          ingredients: ['2 بيضة مسلوقة', '40غ سلمون مدخن'],
          instructions: 'تناولي البيض مع السلمون',
        ),
        lunch: Meal(
          name: 'لحم بقري مشوي',
          description: 'غداء بروتيني صافي',
          calories: '370 سعرة',
          ingredients: ['150غ لحم بقري خالي من الدهن', 'بهارات'],
          instructions: 'اشوي اللحم مع البهارات فقط',
        ),
        dinner: Meal(
          name: 'سمك أبيض مسلوق',
          description: 'عشاء خفيف وسهل الهضم',
          calories: '300 سعرة',
          ingredients: ['120غ سمك أبيض', 'أعشاب'],
          instructions: 'اسلقي السمك مع الأعشاب',
        ),
        snacks: [
          Meal(
            name: 'جبنة قريش قليلة الدسم',
            description: 'سناك بروتيني',
            calories: '90 سعرة',
            ingredients: ['50غ جبنة قريش قليلة الدسم'],
            instructions: 'تناوليها كسناك بين الوجبات',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم السابع - مرحلة الهجوم',
        breakfast: Meal(
          name: 'بيض أومليت مع شرائح الدجاج',
          description: 'إفطار بروتيني متنوع',
          calories: '310 سعرة',
          ingredients: ['2 بيضة', '40غ دجاج مسلوق'],
          instructions: 'اخفقي البيض واقليه مع الدجاج',
        ),
        lunch: Meal(
          name: 'سمك مشوي مع الأعشاب',
          description: 'غداء بحري صحي',
          calories: '350 سعرة',
          ingredients: ['150غ سمك أبيض', 'أعشاب', 'ليمون'],
          instructions: 'اشوي السمك مع الأعشاب والليمون',
        ),
        dinner: Meal(
          name: 'دجاج مسلوق مع الأعشاب',
          description: 'عشاء بروتيني خفيف',
          calories: '300 سعرة',
          ingredients: ['120غ صدر دجاج', 'أعشاب'],
          instructions: 'اسلقي الدجاج مع الأعشاب',
        ),
        snacks: [
          Meal(
            name: 'زبادي خالي الدسم',
            description: 'سناك بروتيني خفيف',
            calories: '100 سعرة',
            ingredients: ['كوب زبادي خالي الدسم'],
            instructions: 'تناولي الزبادي بين الوجبات',
          ),
        ],
      ),
    ];
  }

  static List<DayMeal> _getDashMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'شوفان بالفواكه والمكسرات',
          description: 'إفطار صحي لضغط الدم',
          calories: '300 سعرة',
          ingredients: ['نصف كوب شوفان', 'حليب قليل الدسم', 'توت', '10غ لوز مفروم'],
          instructions: 'اطبخي الشوفان وزينيه بالفواكه والمكسرات',
        ),
        lunch: Meal(
          name: 'سلطة الدجاج بالخضار الورقية',
          description: 'غداء خفيف ومفيد للقلب',
          calories: '400 سعرة',
          ingredients: ['100غ دجاج مشوي', 'سبانخ', 'جرجير', 'طماطم كرزية', 'خيار', 'زيت زيتون قليل'],
          instructions: 'اخلطي جميع المكونات مع القليل من زيت الزيتون',
        ),
        dinner: Meal(
          name: 'سمك مع الأرز البني والخضار',
          description: 'عشاء متوازن لصحة القلب',
          calories: '450 سعرة',
          ingredients: ['120غ سمك مشوي', 'نصف كوب أرز بني', 'بروكلي مطبوخ', 'جزر'],
          instructions: 'قدمي السمك مع الأرز والخضار المطبوخة على البخار',
        ),
        snacks: [
          Meal(
            name: 'موز مع اللوز',
            description: 'سناك غني بالبوتاسيوم',
            calories: '150 سعرة',
            ingredients: ['موزة متوسطة', '10 حبات لوز'],
            instructions: 'سناك مثالي لتنظيم ضغط الدم',
          ),
        ],
      ),
    ];
  }

  static List<DayMeal> _getZoneMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'أومليت متوازن بنسبة 40-30-30',
          description: 'إفطار متوازن هرمونياً',
          calories: '350 سعرة',
          ingredients: ['2 بيضة', 'خبز أسمر قطعة صغيرة', 'أفوكادو ربع حبة', 'طماطم'],
          instructions: 'احرصي على النسب: 40% كارب، 30% بروتين، 30% دهون',
        ),
        lunch: Meal(
          name: 'دجاج مع الأرز والخضار',
          description: 'غداء متوازن النسب',
          calories: '400 سعرة',
          ingredients: ['100غ دجاج', 'ثلث كوب أرز', 'خضار مشكلة', 'ملعقة صغيرة زيت زيتون'],
          instructions: 'التزمي بالنسب المحددة لتوازن الهرمونات',
        ),
        dinner: Meal(
          name: 'سمك مع البطاطا الحلوة',
          description: 'عشاء متوازن',
          calories: '380 سعرة',
          ingredients: ['120غ سمك', 'قطعة صغيرة بطاطا حلوة', 'سلطة خضراء', 'زيت زيتون'],
          instructions: 'حافظي على توازن العناصر الثلاثة',
        ),
        snacks: [
          Meal(
            name: 'تفاحة مع زبدة اللوز',
            description: 'سناك متوازن',
            calories: '200 سعرة',
            ingredients: ['تفاحة متوسطة', 'ملعقة زبدة لوز'],
            instructions: 'سناك يحافظ على توازن السكر في الدم',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثاني',
        breakfast: Meal(
          name: 'توست الحبوب الكاملة مع زبدة الفول السوداني وشرائح الموز',
          description: 'إفطار متوازن غني بالطاقة',
          calories: '360 سعرة',
          ingredients: ['شريحة خبز حبوب كاملة', 'ملعقة زبدة فول سوداني', 'نصف موزة مقطعة', 'قليل من القرفة'],
          instructions: 'ادهني التوست بزبدة الفول السوداني وضعي شرائح الموز ورشي القرفة',
        ),
        lunch: Meal(
          name: 'سلطة التونة مع الحمص والخضار',
          description: 'غداء متوازن النسب',
          calories: '420 سعرة',
          ingredients: ['علبة تونة مصفاة', 'نصف كوب حمص مسلوق', 'خضار مشكلة', 'ملعقة زيت زيتون'],
          instructions: 'اخلطي جميع المكونات مع زيت الزيتون',
        ),
        dinner: Meal(
          name: 'دجاج مشوي مع البطاطا الحلوة',
          description: 'عشاء متوازن النسب',
          calories: '390 سعرة',
          ingredients: ['100غ دجاج مشوي', 'نصف حبة بطاطا حلوة', 'سلطة خضراء'],
          instructions: 'اشوي الدجاج وقدميه مع البطاطا الحلوة والسلطة',
        ),
        snacks: [
          Meal(
            name: 'جزر مع حمص',
            description: 'سناك متوازن',
            calories: '180 سعرة',
            ingredients: ['جزر مقطع', '3 ملاعق حمص'],
            instructions: 'اغمسي الجزر في الحمص',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثالث',
        breakfast: Meal(
          name: 'أومليت بالخضار وزيت الزيتون',
          description: 'إفطار متوازن غني بالبروتين',
          calories: '340 سعرة',
          ingredients: ['2 بيضة', 'خضار مشكلة (فلفل، سبانخ، طماطم)', 'ملعقة زيت زيتون'],
          instructions: 'اقلي الخضار ثم أضيفي البيض واطبخي الأومليت',
        ),
        lunch: Meal(
          name: 'سمك مشوي مع الأرز البني',
          description: 'غداء متوازن النسب',
          calories: '430 سعرة',
          ingredients: ['120غ سمك مشوي', 'ثلث كوب أرز بني', 'خضار مطبوخة'],
          instructions: 'اشوي السمك واطبخي الأرز مع الخضار',
        ),
        dinner: Meal(
          name: 'سلطة الدجاج مع الأفوكادو',
          description: 'عشاء متوازن',
          calories: '370 سعرة',
          ingredients: ['100غ دجاج مشوي', 'نصف أفوكادو', 'خضار ورقية', 'ملعقة زيت زيتون'],
          instructions: 'اخلطي جميع المكونات مع زيت الزيتون',
        ),
        snacks: [
          Meal(
            name: 'تفاحة مع جوز',
            description: 'سناك متوازن',
            calories: '170 سعرة',
            ingredients: ['تفاحة متوسطة', '6 حبات جوز'],
            instructions: 'تناولي التفاح مع الجوز كسناك',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الرابع',
        breakfast: Meal(
          name: 'زبادي يوناني مع التوت والشوفان',
          description: 'إفطار متوازن غني بالبروتين والألياف',
          calories: '350 سعرة',
          ingredients: ['كوب زبادي يوناني', 'ملعقتان شوفان', 'توت', 'ملعقة عسل'],
          instructions: 'اخلطي الزبادي مع الشوفان والتوت والعسل',
        ),
        lunch: Meal(
          name: 'دجاج مع الكينوا والخضار',
          description: 'غداء متوازن النسب',
          calories: '420 سعرة',
          ingredients: ['100غ دجاج مشوي', 'نصف كوب كينوا مطبوخة', 'خضار مشكلة'],
          instructions: 'اشوي الدجاج واطبخي الكينوا مع الخضار',
        ),
        dinner: Meal(
          name: 'سمك مع البطاطا الحلوة والسلطة',
          description: 'عشاء متوازن',
          calories: '380 سعرة',
          ingredients: ['120غ سمك', 'نصف حبة بطاطا حلوة', 'سلطة خضراء'],
          instructions: 'اشوي السمك والبطاطا وقدمي مع السلطة',
        ),
        snacks: [
          Meal(
            name: 'موزة مع لوز',
            description: 'سناك متوازن',
            calories: '180 سعرة',
            ingredients: ['موزة صغيرة', '10 حبات لوز'],
            instructions: 'تناولي الموز مع اللوز كسناك',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الخامس',
        breakfast: Meal(
          name: 'توست الحبوب الكاملة مع جبنة قريش وخيار',
          description: 'إفطار متوازن غني بالبروتين',
          calories: '330 سعرة',
          ingredients: ['شريحة خبز حبوب كاملة', '50غ جبنة قريش', 'خيار مقطع'],
          instructions: 'ادهني التوست بالجبنة وضعي شرائح الخيار',
        ),
        lunch: Meal(
          name: 'سلطة التونة مع البطاطا المسلوقة',
          description: 'غداء متوازن النسب',
          calories: '410 سعرة',
          ingredients: ['علبة تونة مصفاة', 'نصف حبة بطاطا مسلوقة', 'خضار مشكلة', 'ملعقة زيت زيتون'],
          instructions: 'اخلطي جميع المكونات مع زيت الزيتون',
        ),
        dinner: Meal(
          name: 'دجاج مشوي مع الأرز البني',
          description: 'عشاء متوازن',
          calories: '390 سعرة',
          ingredients: ['100غ دجاج مشوي', 'ثلث كوب أرز بني', 'خضار مطبوخة'],
          instructions: 'اشوي الدجاج واطبخي الأرز مع الخضار',
        ),
        snacks: [
          Meal(
            name: 'جزر مع حمص',
            description: 'سناك متوازن',
            calories: '170 سعرة',
            ingredients: ['جزر مقطع', '3 ملاعق حمص'],
            instructions: 'اغمسي الجزر في الحمص',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم السادس',
        breakfast: Meal(
          name: 'أومليت بالخضار وزيت الزيتون',
          description: 'إفطار متوازن غني بالبروتين',
          calories: '340 سعرة',
          ingredients: ['2 بيضة', 'خضار مشكلة (فلفل، سبانخ، طماطم)', 'ملعقة زيت زيتون'],
          instructions: 'اقلي الخضار ثم أضيفي البيض واطبخي الأومليت',
        ),
        lunch: Meal(
          name: 'سمك مشوي مع الكينوا',
          description: 'غداء متوازن النسب',
          calories: '430 سعرة',
          ingredients: ['120غ سمك مشوي', 'نصف كوب كينوا مطبوخة', 'خضار مطبوخة'],
          instructions: 'اشوي السمك واطبخي الكينوا مع الخضار',
        ),
        dinner: Meal(
          name: 'سلطة الدجاج مع الأفوكادو',
          description: 'عشاء متوازن',
          calories: '370 سعرة',
          ingredients: ['100غ دجاج مشوي', 'نصف أفوكادو', 'خضار ورقية', 'ملعقة زيت زيتون'],
          instructions: 'اخلطي جميع المكونات مع زيت الزيتون',
        ),
        snacks: [
          Meal(
            name: 'تفاحة مع جوز',
            description: 'سناك متوازن',
            calories: '170 سعرة',
            ingredients: ['تفاحة متوسطة', '6 حبات جوز'],
            instructions: 'تناولي التفاح مع الجوز كسناك',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم السابع',
        breakfast: Meal(
          name: 'زبادي يوناني مع التوت والشوفان',
          description: 'إفطار متوازن غني بالبروتين والألياف',
          calories: '350 سعرة',
          ingredients: ['كوب زبادي يوناني', 'ملعقتان شوفان', 'توت', 'ملعقة عسل'],
          instructions: 'اخلطي الزبادي مع الشوفان والتوت والعسل',
        ),
        lunch: Meal(
          name: 'دجاج مع الكينوا والخضار',
          description: 'غداء متوازن النسب',
          calories: '420 سعرة',
          ingredients: ['100غ دجاج مشوي', 'نصف كوب كينوا مطبوخة', 'خضار مشكلة'],
          instructions: 'اشوي الدجاج واطبخي الكينوا مع الخضار',
        ),
        dinner: Meal(
          name: 'سمك مع البطاطا الحلوة والسلطة',
          description: 'عشاء متوازن',
          calories: '380 سعرة',
          ingredients: ['120غ سمك', 'نصف حبة بطاطا حلوة', 'سلطة خضراء'],
          instructions: 'اشوي السمك والبطاطا وقدمي مع السلطة',
        ),
        snacks: [
          Meal(
            name: 'موزة مع لوز',
            description: 'سناك متوازن',
            calories: '180 سعرة',
            ingredients: ['موزة صغيرة', '10 حبات لوز'],
            instructions: 'تناولي الموز مع اللوز كسناك',
          ),
        ],
      ),
    ];
  }

  static List<DayMeal> _get1200CalorieMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'إفطار خفيف 250 سعرة',
          description: 'إفطار منخفض السعرات',
          calories: '250 سعرة',
          ingredients: ['بيضة مسلوقة', 'شريحة خبز توست أسمر', 'خيارة صغيرة'],
          instructions: 'وجبة بسيطة ومشبعة نسبياً',
        ),
        lunch: Meal(
          name: 'غداء 400 سعرة',
          description: 'الوجبة الرئيسية',
          calories: '400 سعرة',
          ingredients: ['100غ دجاج مشوي', 'سلطة كبيرة', 'ملعقة صغيرة زيت زيتون', 'قطعة فاكهة'],
          instructions: 'أكبر وجبة في اليوم مع التنويع',
        ),
        dinner: Meal(
          name: 'عشاء خفيف 300 سعرة',
          description: 'عشاء منخفض السعرات',
          calories: '300 سعرة',
          ingredients: ['كوب شوربة خضار', '50غ سمك مشوي', 'سلطة خضراء'],
          instructions: 'عشاء خفيف ومشبع',
        ),
        snacks: [
          Meal(
            name: 'سناك 150 سعرة',
            description: 'وجبة خفيفة بين الوجبات',
            calories: '150 سعرة',
            ingredients: ['تفاحة صغيرة', '10 حبات لوز'],
            instructions: 'سناك واحد فقط في اليوم',
          ),
          Meal(
            name: 'سناك مسائي 100 سعرة',
            description: 'سناك خفيف جداً',
            calories: '100 سعرة',
            ingredients: ['كوب شاي أخضر', 'قطعة صغيرة شوكولاتة داكنة'],
            instructions: 'للرغبة الشديدة في المساء',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثاني',
        breakfast: Meal(
          name: 'بيض مسلوق مع خضار طازجة',
          description: 'إفطار غني بالبروتين ومنخفض السعرات',
          calories: '250 سعرة',
          ingredients: ['2 بيضة مسلوقة', 'خيار', 'طماطم', 'شريحة خبز توست أسمر'],
          instructions: 'اسلقي البيض وقدميه مع الخضار والخبز',
        ),
        lunch: Meal(
          name: 'صدر دجاج مشوي مع أرز بني',
          description: 'غداء متوازن ومنخفض السعرات',
          calories: '400 سعرة',
          ingredients: ['100غ صدر دجاج مشوي', 'نصف كوب أرز بني', 'سلطة خضراء'],
          instructions: 'اشوي الدجاج واطبخ الأرز وقدميهما مع السلطة',
        ),
        dinner: Meal(
          name: 'شوربة عدس مع سلطة',
          description: 'عشاء دافئ وخفيف',
          calories: '300 سعرة',
          ingredients: ['كوب شوربة عدس', 'سلطة خضراء', 'قطعة خبز أسمر صغيرة'],
          instructions: 'حضري الشوربة والسلطة وتناوليها مع الخبز',
        ),
        snacks: [
          Meal(
            name: 'برتقالة صغيرة',
            description: 'سناك غني بفيتامين سي',
            calories: '80 سعرة',
            ingredients: ['برتقالة صغيرة'],
            instructions: 'تناولي البرتقالة كسناك بين الوجبات',
          ),
          Meal(
            name: 'حفنة مكسرات نيئة',
            description: 'سناك غني بالدهون الصحية',
            calories: '120 سعرة',
            ingredients: ['15غ مكسرات نيئة'],
            instructions: 'تناولي حفنة صغيرة فقط',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الثالث',
        breakfast: Meal(
          name: 'لبنة مع زيت زيتون وخبز أسمر',
          description: 'إفطار شرقي خفيف',
          calories: '250 سعرة',
          ingredients: ['3 ملاعق لبنة قليلة الدسم', 'ملعقة زيت زيتون', 'شريحة خبز أسمر'],
          instructions: 'ادهني اللبنة على الخبز ورشي زيت الزيتون',
        ),
        lunch: Meal(
          name: 'سمك مشوي مع خضار سوتيه',
          description: 'غداء غني بالبروتين وأوميجا 3',
          calories: '400 سعرة',
          ingredients: ['100غ سمك مشوي', 'خضار سوتيه', 'ليمون'],
          instructions: 'اشوي السمك وقدميه مع الخضار',
        ),
        dinner: Meal(
          name: 'سلطة تونة مع خس وخضار',
          description: 'عشاء خفيف ومنخفض السعرات',
          calories: '300 سعرة',
          ingredients: ['علبة تونة مصفاة', 'خس', 'خيار', 'طماطم', 'ليمون'],
          instructions: 'اخلطي جميع المكونات مع عصير الليمون',
        ),
        snacks: [
          Meal(
            name: 'تفاحة صغيرة',
            description: 'سناك غني بالألياف',
            calories: '80 سعرة',
            ingredients: ['تفاحة صغيرة'],
            instructions: 'تناوليها كسناك بين الوجبات',
          ),
          Meal(
            name: 'كوب شاي أخضر',
            description: 'مشروب خفيف بدون سكر',
            calories: '20 سعرة',
            ingredients: ['كوب شاي أخضر'],
            instructions: 'اشربيه دافئاً بعد الوجبات',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الرابع',
        breakfast: Meal(
          name: 'جبنة قريش مع خضار',
          description: 'إفطار غني بالبروتين ومنخفض الدهون',
          calories: '250 سعرة',
          ingredients: ['50غ جبنة قريش', 'خيار', 'طماطم', 'شريحة خبز أسمر'],
          instructions: 'قطعي الخضار وقدميها مع الجبنة والخبز',
        ),
        lunch: Meal(
          name: 'دجاج مشوي مع بطاطا مشوية',
          description: 'غداء متوازن ومنخفض السعرات',
          calories: '400 سعرة',
          ingredients: ['100غ دجاج مشوي', 'حبة بطاطا صغيرة مشوية', 'سلطة خضراء'],
          instructions: 'اشوي الدجاج والبطاطا وقدميهما مع السلطة',
        ),
        dinner: Meal(
          name: 'شوربة خضار مع قطعة توست',
          description: 'عشاء دافئ وخفيف',
          calories: '300 سعرة',
          ingredients: ['كوب شوربة خضار', 'شريحة توست أسمر'],
          instructions: 'حضري الشوربة وتناوليها مع التوست',
        ),
        snacks: [
          Meal(
            name: 'موزة صغيرة',
            description: 'سناك غني بالبوتاسيوم',
            calories: '90 سعرة',
            ingredients: ['موزة صغيرة'],
            instructions: 'تناوليها كسناك بين الوجبات',
          ),
          Meal(
            name: 'حفنة مكسرات نيئة',
            description: 'سناك غني بالدهون الصحية',
            calories: '110 سعرة',
            ingredients: ['10غ مكسرات نيئة'],
            instructions: 'تناولي حفنة صغيرة فقط',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم الخامس',
        breakfast: Meal(
          name: 'بيض أومليت بالخضار',
          description: 'إفطار غني بالبروتين والألياف',
          calories: '250 سعرة',
          ingredients: ['2 بيضة', 'خضار مشكلة (فلفل، بصل، طماطم)', 'شريحة خبز أسمر'],
          instructions: 'اخفقي البيض مع الخضار واطبخي الأومليت',
        ),
        lunch: Meal(
          name: 'كفتة مشوية مع سلطة',
          description: 'غداء غني بالبروتين ومنخفض الدهون',
          calories: '400 سعرة',
          ingredients: ['100غ كفتة مشوية', 'سلطة خضراء', 'ليمون'],
          instructions: 'اشوي الكفتة وقدميها مع السلطة',
        ),
        dinner: Meal(
          name: 'شوربة عدس مع قطعة خبز أسمر',
          description: 'عشاء دافئ وخفيف',
          calories: '300 سعرة',
          ingredients: ['كوب شوربة عدس', 'قطعة خبز أسمر صغيرة'],
          instructions: 'حضري الشوربة وتناوليها مع الخبز',
        ),
        snacks: [
          Meal(
            name: 'برتقالة صغيرة',
            description: 'سناك غني بفيتامين سي',
            calories: '80 سعرة',
            ingredients: ['برتقالة صغيرة'],
            instructions: 'تناوليها كسناك بين الوجبات',
          ),
          Meal(
            name: 'كوب شاي أخضر',
            description: 'مشروب خفيف بدون سكر',
            calories: '20 سعرة',
            ingredients: ['كوب شاي أخضر'],
            instructions: 'اشربيه دافئاً بعد الوجبات',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم السادس',
        breakfast: Meal(
          name: 'لبنة مع زيت زيتون وخبز أسمر',
          description: 'إفطار شرقي خفيف',
          calories: '250 سعرة',
          ingredients: ['3 ملاعق لبنة قليلة الدسم', 'ملعقة زيت زيتون', 'شريحة خبز أسمر'],
          instructions: 'ادهني اللبنة على الخبز ورشي زيت الزيتون',
        ),
        lunch: Meal(
          name: 'سمك مشوي مع خضار سوتيه',
          description: 'غداء غني بالبروتين وأوميجا 3',
          calories: '400 سعرة',
          ingredients: ['100غ سمك مشوي', 'خضار سوتيه', 'ليمون'],
          instructions: 'اشوي السمك وقدميه مع الخضار',
        ),
        dinner: Meal(
          name: 'سلطة تونة مع خس وخضار',
          description: 'عشاء خفيف ومنخفض السعرات',
          calories: '300 سعرة',
          ingredients: ['علبة تونة مصفاة', 'خس', 'خيار', 'طماطم', 'ليمون'],
          instructions: 'اخلطي جميع المكونات مع عصير الليمون',
        ),
        snacks: [
          Meal(
            name: 'تفاحة صغيرة',
            description: 'سناك غني بالألياف',
            calories: '80 سعرة',
            ingredients: ['تفاحة صغيرة'],
            instructions: 'تناوليها كسناك بين الوجبات',
          ),
          Meal(
            name: 'حفنة مكسرات نيئة',
            description: 'سناك غني بالدهون الصحية',
            calories: '120 سعرة',
            ingredients: ['15غ مكسرات نيئة'],
            instructions: 'تناولي حفنة صغيرة فقط',
          ),
        ],
      ),
      DayMeal(
        day: 'اليوم السابع',
        breakfast: Meal(
          name: 'جبنة قريش مع خضار',
          description: 'إفطار غني بالبروتين ومنخفض الدهون',
          calories: '250 سعرة',
          ingredients: ['50غ جبنة قريش', 'خيار', 'طماطم', 'شريحة خبز أسمر'],
          instructions: 'قطعي الخضار وقدميها مع الجبنة والخبز',
        ),
        lunch: Meal(
          name: 'دجاج مشوي مع بطاطا مشوية',
          description: 'غداء متوازن ومنخفض السعرات',
          calories: '400 سعرة',
          ingredients: ['100غ دجاج مشوي', 'حبة بطاطا صغيرة مشوية', 'سلطة خضراء'],
          instructions: 'اشوي الدجاج والبطاطا وقدميهما مع السلطة',
        ),
        dinner: Meal(
          name: 'شوربة خضار مع قطعة توست',
          description: 'عشاء دافئ وخفيف',
          calories: '300 سعرة',
          ingredients: ['كوب شوربة خضار', 'شريحة توست أسمر'],
          instructions: 'حضري الشوربة وتناوليها مع التوست',
        ),
        snacks: [
          Meal(
            name: 'موزة صغيرة',
            description: 'سناك غني بالبوتاسيوم',
            calories: '90 سعرة',
            ingredients: ['موزة صغيرة'],
            instructions: 'تناوليها كسناك بين الوجبات',
          ),
          Meal(
            name: 'كوب شاي أخضر',
            description: 'مشروب خفيف بدون سكر',
            calories: '20 سعرة',
            ingredients: ['كوب شاي أخضر'],
            instructions: 'اشربيه دافئاً بعد الوجبات',
          ),
        ],
      ),
    ];
  }

  static List<DayMeal> _getCarbCycleMeals() {
    return [
      DayMeal(
        day: 'يوم عالي الكربوهيدرات',
        breakfast: Meal(
          name: 'شوفان بالفواكه',
          description: 'إفطار عالي الكارب ليوم التدريب',
          calories: '450 سعرة',
          ingredients: ['كوب شوفان', 'موز', 'عسل', 'حليب قليل الدسم', 'توت'],
          instructions: 'كارب عالي لتزويد العضلات بالطاقة',
        ),
        lunch: Meal(
          name: 'دجاج مع الأرز والخضار',
          description: 'غداء عالي الكارب والبروتين',
          calories: '550 سعرة',
          ingredients: ['150غ دجاج', 'كوب أرز أبيض', 'خضار مختلطة'],
          instructions: 'وجبة مثالية بعد التمرين',
        ),
        dinner: Meal(
          name: 'باستا بالدجاج',
          description: 'عشاء عالي الكارب',
          calories: '500 سعرة',
          ingredients: ['100غ باستا حبوب كاملة', '100غ دجاج', 'صلصة طماطم', 'خضار'],
          instructions: 'كارب إضافي لتعويض المخزون',
        ),
        snacks: [
          Meal(
            name: 'فواكه وزبادي',
            description: 'سناك عالي الكارب',
            calories: '200 سعرة',
            ingredients: ['موز', 'عنب', 'زبادي يوناني'],
            instructions: 'سناك سريع الامتصاص',
          ),
        ],
      ),
    ];
  }

  static List<DayMeal> _getFruitVegMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'عصير أخضر طازج',
          description: 'إفطار منظف ومنشط',
          calories: '200 سعرة',
          ingredients: ['سبانخ', 'تفاح أخضر', 'خيار', 'ليمون', 'نعناع', 'ماء'],
          instructions: 'اخلطي جميع المكونات في الخلاط واشربي فوراً',
        ),
        lunch: Meal(
          name: 'سلطة الفواكه المشكلة',
          description: 'غداء منعش ومليء بالفيتامينات',
          calories: '300 سعرة',
          ingredients: ['تفاح', 'كمثرى', 'عنب', 'فراولة', 'كيوي', 'عصير ليمون'],
          instructions: 'قطعي الفواكه ورشي عليها عصير الليمون',
        ),
        dinner: Meal(
          name: 'شوربة الخضار الطازجة',
          description: 'عشاء دافئ ومغذي',
          calories: '250 سعرة',
          ingredients: ['جزر', 'كوسا', 'بروكلي', 'كرفس', 'بصل', 'طماطم', 'أعشاب'],
          instructions: 'اسلقي الخضار واهرسيها جزئياً مع الأعشاب',
        ),
        snacks: [
          Meal(
            name: 'تفاحة مع القرفة',
            description: 'سناك طبيعي ومطهر',
            calories: '80 سعرة',
            ingredients: ['تفاحة متوسطة', 'رشة قرفة'],
            instructions: 'قطعي التفاح ورشي عليه القرفة',
          ),
          Meal(
            name: 'عصير جزر طازج',
            description: 'مشروب مغذي ومطهر',
            calories: '100 سعرة',
            ingredients: ['جزرتان كبيرتان', 'قطعة زنجبيل صغيرة'],
            instructions: 'اعصري الجزر مع الزنجبيل واشربي فوراً',
          ),
        ],
      ),
    ];
  }

  // الأنظمة الجديدة - الوظائف

  // رجيم الماء
  static List<DayMeal> _getWaterDietMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'كوبين ماء دافئ مع الليمون + توست أسمر',
          description: 'بداية منعشة لتنشيط الجسم',
          calories: '200 سعرة',
          ingredients: ['2 كوب ماء دافئ', 'ليمونة', 'شريحة توست أسمر', 'ملعقة عسل'],
          instructions: 'اشربي الماء الدافئ بالليمون على الريق، ثم تناولي التوست بعد 30 دقيقة',
        ),
        lunch: Meal(
          name: '3 أكواب ماء + سلطة خضار + دجاج مشوي',
          description: 'وجبة متوازنة مع الترطيب',
          calories: '400 سعرة',
          ingredients: ['3 أكواب ماء', 'سلطة خضار مشكلة', '100غ دجاج مشوي', 'زيت زيتون'],
          instructions: 'اشربي كوب ماء قبل الأكل بـ30 دقيقة، ثم الوجبة، ثم كوبين بعد الأكل',
        ),
        dinner: Meal(
          name: 'كوبين ماء + شوربة خضار',
          description: 'عشاء خفيف مع ترطيب مثالي',
          calories: '250 سعرة',
          ingredients: ['2 كوب ماء', 'شوربة خضار', 'قطعة خبز أسمر صغيرة'],
          instructions: 'ابدئي بالماء، ثم الشوربة الدافئة',
        ),
        snacks: [
          Meal(
            name: 'كوب ماء + تفاحة',
            description: 'سناك مرطب ومغذي',
            calories: '100 سعرة',
            ingredients: ['كوب ماء', 'تفاحة متوسطة'],
            instructions: 'اشربي الماء أولاً ثم تناولي التفاحة ببطء',
          ),
        ],
      ),
    ];
  }

  // رجيم البروتين
  static List<DayMeal> _getProteinDietMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'أومليت البيض مع الجبنة قليلة الدسم',
          description: 'إفطار عالي البروتين لبناء العضلات',
          calories: '350 سعرة',
          ingredients: ['3 بيضات', '30غ جبنة قليلة الدسم', 'ملعقة زيت زيتون', 'بهارات'],
          instructions: 'اخفقي البيض واقليه مع الجبنة والبهارات',
        ),
        lunch: Meal(
          name: 'صدر دجاج مشوي + زبادي يوناني',
          description: 'غداء غني بالبروتين عالي الجودة',
          calories: '450 سعرة',
          ingredients: ['150غ صدر دجاج', 'كوب زبادي يوناني', 'خضار ورقية', 'خيار'],
          instructions: 'اشوي الدجاج واتركيه ينضج، قدميه مع الزبادي والسلطة',
        ),
        dinner: Meal(
          name: 'سمك السالمون + بروكلي مطبوخ',
          description: 'عشاء بروتيني مع أوميجا 3',
          calories: '400 سعرة',
          ingredients: ['120غ سمك سالمون', 'كوب بروكلي', 'ليمون', 'أعشاب'],
          instructions: 'اشوي السمك مع الأعشاب واسلقي البروكلي على البخار',
        ),
        snacks: [
          Meal(
            name: 'بروتين شيك طبيعي',
            description: 'مشروب بروتيني منزلي',
            calories: '200 سعرة',
            ingredients: ['كوب حليب قليل الدسم', '30غ مكسرات', 'موزة صغيرة'],
            instructions: 'اخلطي المكونات في الخلاط واشربي فوراً',
          ),
        ],
      ),
    ];
  }

  // رجيم التمر واللبن
  static List<DayMeal> _getDatesMilkDietMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: '7 تمرات + كوب لبن',
          description: 'إفطار تقليدي مغذي وسريع الهضم',
          calories: '300 سعرة',
          ingredients: ['7 حبات تمر مجدول', 'كوب لبن قليل الدسم'],
          instructions: 'تناولي التمر مع اللبن على دفعات صغيرة',
        ),
        lunch: Meal(
          name: '5 تمرات + كوب لبن',
          description: 'غداء خفيف ومشبع',
          calories: '250 سعرة',
          ingredients: ['5 حبات تمر', 'كوب لبن'],
          instructions: 'كما الإفطار، تناولي ببطء',
        ),
        dinner: Meal(
          name: '3 تمرات + كوب لبن',
          description: 'عشاء خفيف جداً',
          calories: '200 سعرة',
          ingredients: ['3 حبات تمر', 'كوب لبن'],
          instructions: 'وجبة أخيرة قبل النوم بساعتين',
        ),
        snacks: [
          Meal(
            name: 'نصف كوب لبن',
            description: 'سناك لكسر الجوع',
            calories: '80 سعرة',
            ingredients: ['نصف كوب لبن'],
            instructions: 'اشربي ببطء عند الحاجة',
          ),
        ],
      ),
    ];
  }

  // رجيم الجريب فروت
  static List<DayMeal> _getGrapefruitDietMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'نصف جريب فروت + بيضة مسلوقة + توست',
          description: 'إفطار محرق للدهون',
          calories: '250 سعرة',
          ingredients: ['نصف جريب فروت', 'بيضة مسلوقة', 'شريحة توست أسمر'],
          instructions: 'ابدئي بالجريب فروت، ثم البيضة والتوست',
        ),
        lunch: Meal(
          name: 'نصف جريب فروت + سلطة دجاج',
          description: 'غداء منعش ومغذي',
          calories: '350 سعرة',
          ingredients: ['نصف جريب فروت', '100غ دجاج مشوي', 'سلطة خضراء', 'زيت زيتون'],
          instructions: 'تناولي الجريب فروت قبل السلطة بـ15 دقيقة',
        ),
        dinner: Meal(
          name: 'نصف جريب فروت + سمك مشوي + خضار',
          description: 'عشاء صحي ومحرق للدهون',
          calories: '300 سعرة',
          ingredients: ['نصف جريب فروت', '100غ سمك أبيض', 'خضار مطبوخة'],
          instructions: 'الجريب فروت أولاً، ثم الوجبة الرئيسية',
        ),
        snacks: [
          Meal(
            name: 'ربع جريب فروت',
            description: 'سناك حارق للدهون',
            calories: '50 سعرة',
            ingredients: ['ربع جريب فروت'],
            instructions: 'تناولي عند الشعور بالجوع',
          ),
        ],
      ),
    ];
  }

  // رجيم السوبر فود
  static List<DayMeal> _getSuperFoodDietMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'عصيدة الشوفان بالتوت والشيا',
          description: 'إفطار خارق الفوائد',
          calories: '400 سعرة',
          ingredients: ['نصف كوب شوفان', 'ملعقة بذور شيا', 'توت أزرق', 'لوز مطحون', 'عسل'],
          instructions: 'انقعي الشيا ليلة، اطبخي الشوفان وأضيفي المكونات',
        ),
        lunch: Meal(
          name: 'سلطة الكينوا بالسبانخ والأفوكادو',
          description: 'غداء مليء بالعناصر الخارقة',
          calories: '450 سعرة',
          ingredients: ['كوب كينوا مطبوخة', 'سبانخ طازجة', 'نصف أفوكادو', 'رمان', 'زيت زيتون'],
          instructions: 'اخلطي جميع المكونات واتركيها تتبل',
        ),
        dinner: Meal(
          name: 'سمك السالمون مع البطاطا الحلوة',
          description: 'عشاء غني بأوميجا 3',
          calories: '400 سعرة',
          ingredients: ['120غ سالمون', 'حبة بطاطا حلوة متوسطة', 'بروكلي', 'كركم'],
          instructions: 'اشوي السمك واخبزي البطاطا واسلقي البروكلي',
        ),
        snacks: [
          Meal(
            name: 'سموثي الأكاي',
            description: 'مشروب خارق للأكسدة',
            calories: '200 سعرة',
            ingredients: ['ملعقة بودرة أكاي', 'موز', 'توت', 'حليب لوز'],
            instructions: 'اخلطي المكونات واشربي فوراً',
          ),
        ],
      ),
    ];
  }

  // رجيم الصحراء
  static List<DayMeal> _getDesertDietMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'تمر + لبن جمل + خبز الشعير',
          description: 'إفطار صحراوي أصيل',
          calories: '350 سعرة',
          ingredients: ['5 تمرات', 'كوب لبن جمل', 'قطعة خبز شعير'],
          instructions: 'طعام البدو التقليدي، غني ومشبع',
        ),
        lunch: Meal(
          name: 'لحم مشوي + سمن بلدي + خبز',
          description: 'غداء صحراوي دسم',
          calories: '500 سعرة',
          ingredients: ['100غ لحم غنم', 'ملعقة سمن بلدي', 'خبز بدوي', 'بصل مشوي'],
          instructions: 'اشوي اللحم على الفحم مع البصل',
        ),
        dinner: Meal(
          name: 'مريس + لبن + تمر',
          description: 'عشاء خفيف ومغذي',
          calories: '300 سعرة',
          ingredients: ['تمر ناعم', 'لبن طازج', 'قليل من الهيل'],
          instructions: 'اخلطي التمر مع اللبن حتى يصبح كالمريس',
        ),
        snacks: [
          Meal(
            name: 'قهوة عربية + تمر',
            description: 'ضيافة صحراوية',
            calories: '100 سعرة',
            ingredients: ['قهوة عربية بالهيل', '3 تمرات'],
            instructions: 'اشربي القهوة مع التمر كالتقليد البدوي',
          ),
        ],
      ),
    ];
  }

  // رجيم المكسرات
  static List<DayMeal> _getNutsDietMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'زبدة اللوز + تفاح + شوفان',
          description: 'إفطار غني بالدهون الصحية',
          calories: '400 سعرة',
          ingredients: ['ملعقتان زبدة لوز', 'تفاحة مقطعة', 'ربع كوب شوفان', 'قرفة'],
          instructions: 'قطعي التفاح واخلطيه مع الشوفان وزبدة اللوز',
        ),
        lunch: Meal(
          name: 'سلطة بالجوز والفيتا',
          description: 'غداء متوازن مع مكسرات',
          calories: '450 سعرة',
          ingredients: ['جرجير وسبانخ', '30غ جوز مفروم', 'جبنة فيتا', 'زيت زيتون', 'خل بلسمي'],
          instructions: 'اخلطي السلطة وأضيفي الجوز والجبنة',
        ),
        dinner: Meal(
          name: 'دجاج بالبندق المحمص',
          description: 'عشاء لذيذ بالمكسرات',
          calories: '400 سعرة',
          ingredients: ['120غ دجاج', '20غ بندق محمص', 'خضار مطبوخة', 'زعتر'],
          instructions: 'اطبخي الدجاج ورشي عليه البندق المفروم',
        ),
        snacks: [
          Meal(
            name: 'ميكس مكسرات نيئة',
            description: 'سناك صحي ومشبع',
            calories: '200 سعرة',
            ingredients: ['لوز', 'جوز', 'فستق', 'كاشو'],
            instructions: 'حفنة صغيرة من المكسرات المتنوعة',
          ),
        ],
      ),
    ];
  }

  // رجيم العصائر الخضراء
  static List<DayMeal> _getGreenJuiceDietMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'عصير أخضر منظف',
          description: 'عصير تطهير قوي للجسم',
          calories: '200 سعرة',
          ingredients: ['سبانخ', 'كرفس', 'خيار', 'تفاح أخضر', 'ليمون', 'زنجبيل'],
          instructions: 'اعصري جميع المكونات واشربي على الريق',
        ),
        lunch: Meal(
          name: 'عصير الخضار المشكلة',
          description: 'مزيج غني بالفيتامينات',
          calories: '250 سعرة',
          ingredients: ['جزر', 'بنجر', 'كرفس', 'بقدونس', 'ليمون'],
          instructions: 'اعصري الخضار واشربي ببطء',
        ),
        dinner: Meal(
          name: 'عصير أخضر مع بذور الشيا',
          description: 'عشاء سائل مغذي',
          calories: '180 سعرة',
          ingredients: ['خس', 'سبانخ', 'ملعقة بذور شيا', 'كيوي', 'ماء جوز الهند'],
          instructions: 'انقعي الشيا ثم اخلطي مع باقي المكونات',
        ),
        snacks: [
          Meal(
            name: 'شاي أخضر بالنعناع',
            description: 'مشروب مضاد للأكسدة',
            calories: '20 سعرة',
            ingredients: ['شاي أخضر', 'نعناع طازج', 'ليمون'],
            instructions: 'انقعي الشاي مع النعناع لـ5 دقائق',
          ),
        ],
      ),
    ];
  }

  // رجيم الشوفان
  static List<DayMeal> _getOatsDietMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'عصيدة الشوفان بالقرفة والعسل',
          description: 'إفطار مشبع وصحي',
          calories: '350 سعرة',
          ingredients: ['نصف كوب شوفان', 'كوب حليب قليل الدسم', 'قرفة', 'ملعقة عسل', 'موز'],
          instructions: 'اطبخي الشوفان مع الحليب وأضيفي القرفة والعسل',
        ),
        lunch: Meal(
          name: 'سلطة الشوفان بالخضار',
          description: 'غداء مبتكر بالشوفان البارد',
          calories: '400 سعرة',
          ingredients: ['ربع كوب شوفان نيء', 'طماطم', 'خيار', 'جزر مبشور', 'زيت زيتون', 'ليمون'],
          instructions: 'انقعي الشوفان واخلطيه مع الخضار والتتبيلة',
        ),
        dinner: Meal(
          name: 'شوربة الشوفان بالدجاج',
          description: 'عشاء دافئ ومغذي',
          calories: '300 سعرة',
          ingredients: ['ربع كوب شوفان', 'مرق دجاج', 'قطع دجاج صغيرة', 'جزر', 'كرفس'],
          instructions: 'اطبخي الشوفان في المرق مع الخضار والدجاج',
        ),
        snacks: [
          Meal(
            name: 'كوكيز الشوفان الصحي',
            description: 'سناك لذيذ ومفيد',
            calories: '150 سعرة',
            ingredients: ['ملعقتان شوفان', 'موزة مهروسة', 'قرفة'],
            instructions: 'اخلطي المكونات واخبزي لمدة 10 دقائق',
          ),
        ],
      ),
    ];
  }

  // رجيم الأسماك البحرية
  static List<DayMeal> _getSeafoodDietMeals() {
    return [
      DayMeal(
        day: 'اليوم الأول',
        breakfast: Meal(
          name: 'أومليت بالسلمون المدخن',
          description: 'إفطار بحري غني بأوميجا 3',
          calories: '350 سعرة',
          ingredients: ['2 بيضة', '30غ سلمون مدخن', 'كريمة طبخ قليلة الدسم', 'شبت'],
          instructions: 'اخفقي البيض واقليه مع السلمون والكريمة',
        ),
        lunch: Meal(
          name: 'سلطة التونة بالأفوكادو',
          description: 'غداء بحري منعش',
          calories: '400 سعرة',
          ingredients: ['علبة تونا بالماء', 'نصف أفوكادو', 'خس وجرجير', 'طماطم كرزية', 'زيت زيتون'],
          instructions: 'اخلطي التونا مع الأفوكادو والسلطة',
        ),
        dinner: Meal(
          name: 'جمبري مشوي بالثوم',
          description: 'عشاء بحري لذيذ وخفيف',
          calories: '300 سعرة',
          ingredients: ['150غ جمبري كبير', 'ثوم مفروم', 'بقدونس', 'ليمون', 'زيت زيتون'],
          instructions: 'اشوي الجمبري مع الثوم والبقدونس',
        ),
        snacks: [
          Meal(
            name: 'سلطة الأعشاب البحرية',
            description: 'سناك بحري مفيد',
            calories: '100 سعرة',
            ingredients: ['أعشاب بحرية مجففة', 'خيار', 'خل الأرز', 'سمسم'],
            instructions: 'انقعي الأعشاب واخلطيها مع الخيار',
          ),
        ],
      ),
    ];
  }

}
