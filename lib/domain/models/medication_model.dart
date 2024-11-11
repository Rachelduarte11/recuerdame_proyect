class MedicationModel {
  final String id;
  final String name;
  final String type; // e.g., "Tablet", "Injection", "Topical"
  final String dosage; // e.g., "500mg"
  final String frequency; // e.g., "Daily", "Weekly"
  final String duration; // e.g., "1 Month"
  final String notes; // Additional information if needed

  MedicationModel({
    required this.id,
    required this.name,
    required this.type,
    required this.dosage,
    required this.frequency,
    required this.duration,
    this.notes = "",
  });
}