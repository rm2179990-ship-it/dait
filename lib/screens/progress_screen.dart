import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_preferences.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  Map<String, int> stats = {};
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadStats();
  }

  Future<void> _loadStats() async {
    final progressStats = await AppPreferences.getProgressStats();
    setState(() {
      stats = progressStats;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          'التقدم والإحصائيات',
          style: GoogleFonts.tajawal(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: _loadStats,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Welcome Header
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF4CAF50), Color(0xFF66BB6A)],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.emoji_events,
                                size: 64,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'مبروك على التقدم!',
                                style: GoogleFonts.tajawal(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'استمر في رحلتك نحو حياة صحية أفضل',
                                style: GoogleFonts.tajawal(
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.9),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Statistics Cards
                      Text(
                        'إحصائياتك',
                        style: GoogleFonts.tajawal(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 16),

                      Row(
                        children: [
                          Expanded(
                            child: _buildStatCard(
                              'الوجبات المكتملة',
                              '${stats['completedMeals'] ?? 0}',
                              Icons.check_circle,
                              Colors.green,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _buildStatCard(
                              'الوجبات المفضلة',
                              '${stats['favoriteMeals'] ?? 0}',
                              Icons.favorite,
                              Colors.red,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      _buildStatCard(
                        'الأيام النشطة',
                        '${stats['daysActive'] ?? 0} يوم',
                        Icons.calendar_today,
                        Colors.blue,
                        isWide: true,
                      ),

                      const SizedBox(height: 24),

                      // Motivational Section
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.lightbulb,
                                    color: Colors.orange[600],
                                    size: 24,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'نصيحة اليوم',
                                    style: GoogleFonts.tajawal(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Text(
                                _getMotivationalTip(),
                                style: GoogleFonts.tajawal(
                                  fontSize: 16,
                                  color: Colors.grey[700],
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Achievement Badges
                      Text(
                        'الإنجازات',
                        style: GoogleFonts.tajawal(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 16),

                      _buildAchievementsSection(),

                      const SizedBox(height: 24),

                      // Weekly Progress Chart (Placeholder)
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'تقدم هذا الأسبوع',
                                style: GoogleFonts.tajawal(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[800],
                                ),
                              ),
                              const SizedBox(height: 16),
                              _buildWeeklyProgress(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  Widget _buildStatCard(
    String title,
    String value,
    IconData icon,
    Color color, {
    bool isWide = false,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: isWide ? double.infinity : null,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(icon, color: color, size: 32),
            const SizedBox(height: 12),
            Text(
              value,
              style: GoogleFonts.tajawal(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: GoogleFonts.tajawal(
                fontSize: 14,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAchievementsSection() {
    final completedMeals = stats['completedMeals'] ?? 0;
    final daysActive = stats['daysActive'] ?? 0;

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        _buildAchievementBadge(
          'بداية قوية',
          Icons.play_circle_fill,
          completedMeals >= 1,
          'أكمل أول وجبة',
        ),
        _buildAchievementBadge(
          'محارب الأسبوع',
          Icons.shield,
          daysActive >= 7,
          'استمر لمدة أسبوع',
        ),
        _buildAchievementBadge(
          'عاشق الطعام الصحي',
          Icons.favorite,
          stats['favoriteMeals']! >= 5,
          'احفظ 5 وجبات في المفضلة',
        ),
        _buildAchievementBadge(
          'المثابر',
          Icons.trending_up,
          completedMeals >= 20,
          'أكمل 20 وجبة',
        ),
        _buildAchievementBadge(
          'النجم الصاعد',
          Icons.star,
          daysActive >= 30,
          'استمر لمدة شهر',
        ),
        _buildAchievementBadge(
          'المحترف',
          Icons.workspace_premium,
          completedMeals >= 50,
          'أكمل 50 وجبة',
        ),
      ],
    );
  }

  Widget _buildAchievementBadge(
    String title,
    IconData icon,
    bool isUnlocked,
    String description,
  ) {
    return Container(
      width: (MediaQuery.of(context).size.width - 56) / 2,
      decoration: BoxDecoration(
        color: isUnlocked ? const Color(0xFF4CAF50) : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: isUnlocked
            ? [
                BoxShadow(
                  color: const Color(0xFF4CAF50).withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(
              icon,
              size: 32,
              color: isUnlocked ? Colors.white : Colors.grey[600],
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: GoogleFonts.tajawal(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: isUnlocked ? Colors.white : Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: GoogleFonts.tajawal(
                fontSize: 10,
                color: isUnlocked ? Colors.white.withOpacity(0.8) : Colors.grey[500],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeeklyProgress() {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: List.generate(7, (index) {
          final day = ['س', 'أ', 'ث', 'أ', 'خ', 'ج', 'س'][index];
          final progress = (index + 1) * 0.15; // Mock data
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 20,
                height: progress * 80,
                decoration: BoxDecoration(
                  color: const Color(0xFF4CAF50),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                day,
                style: GoogleFonts.tajawal(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  String _getMotivationalTip() {
    final tips = [
      'الخطوة الأولى هي الأصعب، وأنت تجاوزتها بالفعل! 🎉',
      'كل وجبة صحية هي استثمار في مستقبلك الصحي 💪',
      'لا تقارن تقدمك بالآخرين، قارنه بنفسك في الأمس 📈',
      'التغيير الحقيقي يحدث خارج منطقة الراحة 🚀',
      'النجاح هو مجموع الجهود الصغيرة المتكررة يومياً ⭐',
      'الاستمرارية أهم من الكمال، استمر ولو بخطوات صغيرة 👣',
    ];
    
    final dayOfYear = DateTime.now().difference(DateTime(2025, 1, 1)).inDays;
    return tips[dayOfYear % tips.length];
  }
}
