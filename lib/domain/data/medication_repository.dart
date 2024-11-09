

import '../models/medication_model.dart';

class MedicationRepository {
  // Simulate fetching data from an API or database
  MedicationModel fetchMedication() {
    return MedicationModel(
      name: 'Paracetamol',
      type: 'Tabletas',
      duration: '1 Mes',
      frequency: 'Diario',
    );
  }
}
