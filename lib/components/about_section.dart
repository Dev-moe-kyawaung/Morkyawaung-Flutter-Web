// lib/components/about_section.dart
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package/flip_counter_plus/flip_counter_plus.dart';
import '../constants/profile_data.dart';
import '../constants/colors.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: Column(
        children: [
          _buildSectionTitle("About Me", context),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatCard("8+", 8, "Years Experience", AppColors.neonCyan),
              _buildStatCard("15+", 15, "Apps on Play Store", AppColors.hotPink),
              _buildStatCard("200K+", 200000, "Users Reached", AppColors.electricYellow),
              _buildStatCard("10+", 10, "Happy Clients", AppColors.neonCyan),
            ],
          ).animate().fadeUp(duration: 800.ms, delay: 200.ms),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatCard("1,222", 1222, "Total Repos", AppColors.hotPink),
              _buildStatCard("100%", 100, "Satisfaction", AppColors.electricYellow),
            ],
          ).animate().fadeUp(duration: 800.ms, delay: 400.ms),
          SizedBox(height: 60),
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.neonCyan.withOpacity(0.3)),
            ),
            child: Column(
              children: [
                Text(
                  ProfileData.experienceDetail,
                  style: TextStyle(fontSize: 16, color: AppColors.textSecondary),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  ProfileData.focusAreas,
                  style: TextStyle(fontSize: 15, color: AppColors.textMuted),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ).animate().fadeUp(duration: 800.ms, delay: 600.ms),
          SizedBox(height: 50),
          _buildBurmeseSupport(context),
        ],
      ),
    );
  }
  
  Widget _buildStatCard(String value, int finalValue, String label, Color color) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withOpacity(0.3), width: 1),
        boxShadow: [BoxShadow(color: color.withOpacity(0.1), blurRadius: 20, spreadRadius: 5)],
      ),
      child: Column(
        children: [
          FlipCounter(
            initialValue: 0,
            finaleValue: finalValue.toDouble(),
            duration: Duration(seconds: 2),
            textStyle: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: color),
          ),
          SizedBox(height: 10),
          Text(label, style: TextStyle(fontSize: 16, color: AppColors.textSecondary)),
        ],
      ),
    ).animate().fadeUp(delay: 100.ms);
  }
  
  Widget _buildBurmeseSupport(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.neonCyan.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          Icon(Icons.translate, color: AppColors.neonCyan, size: 50),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ဘာမီးစ် ဘာသာစကား အထောက်အပ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
              SizedBox(height: 8),
              Text("Burmese Language Support Available", style: TextStyle(fontSize: 17, color: AppColors.textSecondary)),
            ],
          ),
        ],
      ),
    );
  }
  
  Widget _buildSectionTitle(String title, BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 4,
          decoration: BoxDecoration(color: AppColors.neonCyan, borderRadius: BorderRadius.circular(2)),
        ).animate().fadeLeft(duration: 500.ms),
        SizedBox(height: 15),
        Text(
          title,
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            foreground: Paint()..shader = AppColors.textGradient.createShader(Rect.fromLTWH(0, 0, 500, 50)),
          ),
        ).animate().fadeUp(duration: 600.ms, delay: 100.ms),
      ],
    );
  }
}
