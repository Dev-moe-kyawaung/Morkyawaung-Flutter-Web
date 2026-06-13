import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../constants/profile_data.dart';
import '../constants/colors.dart';
import 'typing_text_animation.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Stack(
        children: [
          Positioned.fill(child: ParticleHeroBackground()),
          Positioned.fill(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildAvatarWithRing(context),
                  Text(
                    ProfileData.name,
                    style: TextStyle(
                      fontSize: 56,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = AppColors.textGradient.createShader(
                          Rect.fromLTWH(0, 0, 400, 70),
                        ),
                    ),
                  ).animate().fadeUp(duration: 600.ms),
                  SizedBox(height: 40),
                  TypingTextAnimation(
                    texts: ProfileData.heroRoles,
                    textStyle: TextStyle(
                      fontSize: 24,
                      color: AppColors.neonCyan,
                      fontWeight: FontWeight.w500,
                    ),
                    showCursor: true,
                  ).animate().fadeUp(duration: 800.ms, delay: 300.ms),
                  SizedBox(height: 30),
                  Text(
                    ProfileData.experienceDetail,
                    style: TextStyle(fontSize: 18, color: AppColors.textSecondary),
                    textAlign: TextAlign.center,
                  ).animate().fadeUp(duration: 800.ms, delay: 500.ms),
                  SizedBox(height: 15),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.location_on, color: AppColors.hotPink, size: 20),
                      SizedBox(width: 8),
                      Text(ProfileData.location, style: TextStyle(fontSize: 16, color: AppColors.textMuted)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildAvatarWithRing(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedRotation(
            duration: Duration(seconds: 8),
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: AppColors.avatarGradient,
                boxShadow: [BoxShadow(color: AppColors.glowCyan.withOpacity(0.5), blurRadius: 30, spreadRadius: 5)],
              ),
            ),
          ),
          ClipOval(
            child: Image.network(
              ProfileData.avatarUrl,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stack) => CircleAvatar(
                backgroundColor: AppColors.neonCyan,
                child: Text(ProfileData.shortName, style: TextStyle(fontSize: 40, color: AppColors.darkBackground)),
              ),
            ),
          ),
        ],
      ),
    ).animate().fadeUp(duration: 1000.ms).scale(delay: 200.ms);
  }
}
