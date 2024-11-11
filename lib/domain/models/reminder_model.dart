class ReminderModel {
  final String id;
  final String medicationId;
  final DateTime reminderTime;
  final bool isRecurring;
  final String recurrencePattern; // e.g., "Daily", "Weekly"

  ReminderModel({
    required this.id,
    required this.medicationId,
    required this.reminderTime,
    this.isRecurring = false,
    this.recurrencePattern = "Daily",
  });
}