class MedicationModel {
  final String description;
  final String type; // e.g., "Tablet", "Injection", "Topical"
  final String frequency; // e.g., "Daily", "Weekly"
  final String duration; // e.g., "1 Month"
  final String start_date; // e.g., "1 Month"
  final String hour_to_take;

  MedicationModel({
    required this.description,
    required this.type,
    required this.frequency,
    required this.duration,
    required this.hour_to_take,
    required this.start_date,
  });
}