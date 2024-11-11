

import '../models/medication_model.dart';

class MedicationRepository {
  List<MedicationModel> fetchMedications()  {
    // Mock data
    return [
      MedicationModel(
        id: '1',
        name: 'Paracetamol',
        type: 'Tablet',
        dosage: '500mg',
        frequency: 'Daily',
        duration: '1 Month',
        notes: 'Take after meals',
      ),
      MedicationModel(
        id: '2',
        name: 'Ibuprofen',
        type: 'Tablet',
        dosage: '200mg',
        frequency: 'Twice Daily',
        duration: '2 Weeks',
        notes: '',
      ),
    ];
  }
}