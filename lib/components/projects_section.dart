import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../constants/profile_data.dart';
import '../constants/colors.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: Column(
        children: [
          _buildSectionTitle("My Create App Collection (15 Apps)", context),
          SizedBox(height: 50),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: ProfileData.projects.map((project) => _buildProjectCard(project, context)).toList(),
          ),
        ],
      ),
    );
  }
  
  Widget _buildProjectCard(Map<String, Object> project, BuildContext context) {
    return GestureDetector(
      onTap: () => _launchGitHub(project["name"] as String),
      child: Container(
        padding: EdgeInsets.all(25),
        width: 280,
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.neonCyan.withOpacity(0.3)),
          boxShadow: [BoxShadow(color: AppColors.neonCyan.withOpacity(0.1), blurRadius: 15, spreadRadius: 3)],
        ),
        child: Column(
          children: [
            Text(project["icon"] as String, style: TextStyle(fontSize: 50)),
            SizedBox(height: 15),
            Text(project["name"]!, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
            SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: (project["tags"] as List<String>).map((tag) => Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: AppColors.neonCyan.withOpacity(0.2), borderRadius: BorderRadius.circular(8)),
                child: Text(tag, style: TextStyle(fontSize: 12, color: AppColors.neonCyan)),
              )).toList(),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActionButton(Icons.code, "Source", AppColors.neonCyan),
                _buildActionButton(Icons.play_arrow, "Demo", AppColors.neonCyan),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildActionButton(IconData icon, String label, Color color) {
    return Row(children: [Icon(icon, color: color, size: 20), SizedBox(width: 5), Text(label, style: TextStyle(color: color, fontSize: 14))]);
  }
  
  void _launchGitHub(String projectName) async {
    final url = Uri.parse("${ProfileData.githubUrl}/${projectName.toLowerCase()}");
    if (await canLaunchUrl(url)) await launchUrl(url);
  }
}
