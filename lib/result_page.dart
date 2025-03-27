import 'package:bmi_calculator/const/theme.dart';
import 'package:flutter/material.dart';

class BmiResults extends StatelessWidget {
  final double weight;
  final double height;

  const BmiResults({super.key, required this.weight, required this.height});

  @override
  Widget build(BuildContext context) {
    final double bmi = weight / ((height / 100) * (height / 100));
    String remarks = _getBmiRemarks(bmi);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Themes.barcolor,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.red.shade600,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        "BMI Results",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildResultRow(Icons.monitor_weight, "Your BMI", bmi.toStringAsFixed(1)),
                    const SizedBox(height: 16),
                    _buildResultRow(Icons.health_and_safety, "Category", remarks),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Determines BMI category
  String _getBmiRemarks(double bmi) {
    if (bmi < 18) return "Underweight";
    if (bmi > 24) return "Overweight";
    return "Normal";
  }

  /// Widget for Result Row
  Widget _buildResultRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          value,
          style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
