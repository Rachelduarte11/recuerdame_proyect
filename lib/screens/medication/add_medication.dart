import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/domain/data/medication_repository.dart';
import 'package:recuerdame_proyect/domain/data/statics_repository.dart';
import 'package:recuerdame_proyect/domain/models/medication_model.dart';
import 'package:recuerdame_proyect/widgets/bottom_navigation.dart';
import 'package:recuerdame_proyect/widgets/medication/add-medication_form.dart';
import 'package:recuerdame_proyect/widgets/medication/add-medication_header.dart';

class AddMedicationPage extends StatelessWidget {

  void _submitInfo(MedicationModel modelToSave) {
    medicationRepo.addMedication(modelToSave);
    statsRepo.newReceipt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0, // Aligns the form to the bottom of the screen
            child: MedicationHeader(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0, // Aligns the form to the bottom of the screen
            child: MedicationForm(onSubmit: (MedicationModel model) {
              _submitInfo(model);
            },),
          ),
        ],
      ),
    );
  }
}
