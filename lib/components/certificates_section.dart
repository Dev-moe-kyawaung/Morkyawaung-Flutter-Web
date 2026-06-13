import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../constants/profile_data.dart';
import '../constants/colors.dart';

class CertificatesSection extends StatelessWidget {
  const CertificatesSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: Column(
        children: [
          _buildSectionTitle("Certificates Collection", context),
          SizedBox(height: 50),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: ProfileData.certificates.map((cert) => _buildCertificateCard(cert, context)).toList(),
          ),
        ],
      ),
    );
  }
  
  Widget _buildCertificateCard(Map<String, String> cert, BuildContext context) {
    final imageUrl = ProfileData.getCertificateUrl(cert["hash"]!);
    
    return Container(
      padding: EdgeInsets.all(25),
      width: 300,
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.neonCyan.withOpacity(0.3)),
        boxShadow: [BoxShadow(color: AppColors.neonCyan.withOpacity(0.1), blurRadius: 15, spreadRadius: 3)],
      ),
      child: Column(
        children: [
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.neonCyan.withOpacity(0.6), width: 2),
              boxShadow: [BoxShadow(color: AppColors.neonCyan.withOpacity(0.3), blurRadius: 20, spreadRadius: 3)],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stack) => Center(
                  child: Icon(Icons.verified, color: AppColors.neonCyan, size: 60),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(cert["title"]!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.textPrimary), textAlign: TextAlign.center, maxLines: 2, overflow: TextOverflow.ellipsis),
          SizedBox(height: 8),
          Text(cert["issuer"]!, style: TextStyle(fontSize: 16, color: AppColors.neonCyan, fontWeight: FontWeight.w500)),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(color: AppColors.neonCyan.withOpacity(0.2), borderRadius: BorderRadius.circular(8)),
            child: Text(cert["year"]!, style: TextStyle(fontSize: 14, color: AppColors.neonCyan, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    ).animate().fadeUp(duration: 600.ms, delay: 100.ms).scale(delay: 200.ms);
  }
}
