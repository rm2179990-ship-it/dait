import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  String _currentDiet = 'لا يوجد';

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final currentDiet = await AppPreferences.getCurrentDiet();
    setState(() {
      _currentDiet = currentDiet ?? 'لا يوجد';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          'الإعدادات',
          style: GoogleFonts.tajawal(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Profile Section
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color(0xFF4CAF50),
                        child: Icon(
                          Icons.person,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'مستخدم التطبيق',
                              style: GoogleFonts.tajawal(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800],
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'النظام الحالي: $_currentDiet',
                              style: GoogleFonts.tajawal(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Edit profile functionality
                        },
                        icon: const Icon(Icons.edit),
                        color: const Color(0xFF4CAF50),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // App Settings
              Text(
                'إعدادات التطبيق',
                style: GoogleFonts.tajawal(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 16),

              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    SwitchListTile(
                      title: Text(
                        'التنبيهات',
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'تلقي تنبيهات مواعيد الوجبات',
                        style: GoogleFonts.tajawal(
                          color: Colors.grey[600],
                        ),
                      ),
                      value: _notificationsEnabled,
                      onChanged: (value) {
                        setState(() {
                          _notificationsEnabled = value;
                        });
                      },
                      activeColor: const Color(0xFF4CAF50),
                    ),
                    const Divider(height: 1),
                    SwitchListTile(
                      title: Text(
                        'الوضع الليلي',
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'واجهة داكنة لحماية العينين',
                        style: GoogleFonts.tajawal(
                          color: Colors.grey[600],
                        ),
                      ),
                      value: _darkModeEnabled,
                      onChanged: (value) {
                        setState(() {
                          _darkModeEnabled = value;
                        });
                      },
                      activeColor: const Color(0xFF4CAF50),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Diet Management
              Text(
                'إدارة النظام الغذائي',
                style: GoogleFonts.tajawal(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 16),

              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.restart_alt,
                        color: Color(0xFF4CAF50),
                      ),
                      title: Text(
                        'إعادة تعيين النظام',
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'إعادة تعيين النظام الحالي والبدء من جديد',
                        style: GoogleFonts.tajawal(
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: _showResetDietDialog,
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(
                        Icons.delete_sweep,
                        color: Colors.orange,
                      ),
                      title: Text(
                        'مسح جميع البيانات',
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'مسح التقدم والمفضلة والإعدادات',
                        style: GoogleFonts.tajawal(
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: _showClearDataDialog,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // App Information
              Text(
                'معلومات التطبيق',
                style: GoogleFonts.tajawal(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 16),

              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.info_outline,
                        color: Color(0xFF4CAF50),
                      ),
                      title: Text(
                        'حول التطبيق',
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'الإصدار 1.0.0',
                        style: GoogleFonts.tajawal(
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: _showAboutDialog,
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(
                        Icons.help_outline,
                        color: Color(0xFF4CAF50),
                      ),
                      title: Text(
                        'المساعدة والدعم',
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'كيفية استخدام التطبيق',
                        style: GoogleFonts.tajawal(
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: _showHelpDialog,
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(
                        Icons.star_rate,
                        color: Colors.amber,
                      ),
                      title: Text(
                        'تقييم التطبيق',
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'ساعدنا بتقييمك للتطبيق',
                        style: GoogleFonts.tajawal(
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: _showRatingDialog,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showResetDietDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          'إعادة تعيين النظام',
          style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
        ),
        content: Text(
          'هل أنت متأكد من أنك تريد إعادة تعيين النظام الحالي؟ سيتم مسح جميع التقدم المسجل.',
          style: GoogleFonts.tajawal(),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('إلغاء', style: GoogleFonts.tajawal()),
          ),
          ElevatedButton(
            onPressed: () async {
              await AppPreferences.clearCurrentDiet();
              setState(() {
                _currentDiet = 'لا يوجد';
              });
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'تم إعادة تعيين النظام بنجاح',
                    style: GoogleFonts.tajawal(),
                  ),
                ),
              );
            },
            child: Text('تأكيد', style: GoogleFonts.tajawal()),
          ),
        ],
      ),
    );
  }

  void _showClearDataDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          'مسح جميع البيانات',
          style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
        ),
        content: Text(
          'تحذير: سيتم مسح جميع البيانات نهائياً ولا يمكن استرجاعها. هل تريد المتابعة؟',
          style: GoogleFonts.tajawal(),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('إلغاء', style: GoogleFonts.tajawal()),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // Here you would implement clearing all data
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'تم مسح جميع البيانات',
                    style: GoogleFonts.tajawal(),
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text('مسح', style: GoogleFonts.tajawal()),
          ),
        ],
      ),
    );
  }

  void _showAboutDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          'حول التطبيق',
          style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
        ),
        content: Text(
          '',
          style: GoogleFonts.tajawal(),
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('موافق', style: GoogleFonts.tajawal()),
          ),
        ],
      ),
    );
  }

  void _showHelpDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          'المساعدة والدعم',
          style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
        ),
        content: Text(
          'كيفية استخدام التطبيق:\n\n1. تصفح الأنظمة في الصفحة الرئيسية\n2. اختر النظام المناسب لك\n3. اقرأ التفاصيل والفوائد\n4. تصفح الوجبات اليومية\n5. احفظ الوجبات المفضلة\n6. تابع تقدمك في صفحة الإحصائيات\n\nللمزيد من المساعدة، راجع دليل المستخدم.',
          style: GoogleFonts.tajawal(),
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('فهمت', style: GoogleFonts.tajawal()),
          ),
        ],
      ),
    );
  }

  void _showRatingDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          'تقييم التطبيق',
          style: GoogleFonts.tajawal(fontWeight: FontWeight.bold),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'هل أعجبك التطبيق؟ ساعدنا بتقييمك!',
              style: GoogleFonts.tajawal(),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'شكراً لتقييمك! ⭐',
                          style: GoogleFonts.tajawal(),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.star, color: Colors.amber),
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('ربما لاحقاً', style: GoogleFonts.tajawal()),
          ),
        ],
      ),
    );
  }
}
