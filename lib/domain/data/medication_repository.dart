

import '../models/medication_model.dart';

class MedicationRepository {
  List<MedicationModel> medications = [
    MedicationModel(
        description: 'Tomar 2 tabletas de Paracetamol de 500mg',
        type: 'Tabletas',
        frequency: 'Diario',
        duration: '1 Mes',
        hour_to_take: '1:00 PM',
        start_date: ''
    ),
    MedicationModel(
        description: 'Inyectar 20cc de Insulina',
        type: 'Inyectables',
        frequency: 'Semanal',
        duration: '2 Semanas',
        hour_to_take: '1:00 PM',
        start_date: ''
    ),
  ];
  List<MedicationModel> fetchMedications()  {
    // Mock data
    return medications;
  }

  void addMedication(MedicationModel medication) {
    medications.add(medication);
  }
}