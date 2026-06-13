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
              _buildStatCard(ProfileData.yearsDisplay, "Years Experience", AppColors.neonCyan),
              _buildStatCard(ProfileData.appsDisplay, "Apps on Play Store", AppColors.hotPink),
              _buildStatCard(ProfileData.usersDisplay, "Users Reached", AppColors.electricYellow),
              _buildStatCard(ProfileData.clientsDisplay, "Happy Clients", AppColors.neonCyan),
            ],
          ).animate().fadeUp(duration: 800.ms, delay: 200.ms),
          SizedBox(height: 60),
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.neonCyan.withOpacity(0.3)),
            ),
            child: Text(
              ProfileData.experienceDetail,
              style: TextStyle(fontSize: 16, color: AppColors.textSecondary),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50),
          _buildBurmeseSupport(context),
        ],
      ),
    );
  }
  
  Widget _buildStatCard(String value, String label, Color color) {
    return Container(
      padding: EdgeInsets.all(30),
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
            finaleValue: double.tryParse(value.replaceAll(RegExp(r'[^d.]'), '')) ?? 0,
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
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.neonCyan.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Icon(Icons.translate, color: AppColors.neonCyan, size: 40),
          SizedBox(height: 15),
          Text("ဘာမီးစ် ဘာသာစကား အထောက်အပ", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
          SizedBox(height: 10),
          Text("Burmese Language Support Available", style: TextStyle(fontSize: 16, color: AppColors.textSecondary)),
        ],
      ),
    );
  }
}
