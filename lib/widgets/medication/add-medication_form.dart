import 'package:flutter/material.dart';

class MedicationForm extends StatefulWidget {
  @override
  _MedicationFormState createState() => _MedicationFormState();
}

class _MedicationFormState extends State<MedicationForm> {
  // Controllers for input fields
  final TextEditingController _medicationNameController = TextEditingController();
  final TextEditingController _durationController = TextEditingController();
  final TextEditingController _frequencyController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();

  String selectedType = "Tabletas"; // Default selected type

  @override
  Widget build(BuildContext context) {
    final double formHeight = MediaQuery.of(context).size.height * 0.6;
    return Container(
      height: formHeight,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle("Nombre Del Medicamento"),
          const SizedBox(height: 4),
          TextField(
            controller: _medicationNameController,
            decoration: const InputDecoration(
              hintText: "Ingrese el nombre del medicamento",
              hintStyle: TextStyle(fontSize: 18, color: Colors.black),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
              ),
            ),
          ),
          _buildSectionTitle("Tipo"),
          const SizedBox(height: 8),
          _buildTypeOptionsRow(),
          const SizedBox(height: 16),
          _buildEditableInfoRow(),
          const SizedBox(height: 20),
          Center(
            child: _buildAddButton(() {
              // Handle Add button action here
              _submitForm();
            }),
          ),
        ],
      ),
    );
  }

  // Method to get all the data when the form is submitted
  void _submitForm() {
    final String medicationName = _medicationNameController.text;
    final String duration = _durationController.text;
    final String frequency = _frequencyController.text;
    final String startDate = _startDateController.text;

    print("Medication Name: $medicationName");
    print("Type: $selectedType");
    print("Duration: $duration");
    print("Frequency: $frequency");
    print("Start Date: $startDate");
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildTypeOptionsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildTypeOption('assets/images/pastillas.png', "Tabletas"),
        _buildTypeOption('assets/images/unguento.png', "Tópicos"),
        _buildTypeOption('assets/images/inyectar.png', "Inyectables"),
      ],
    );
  }

  Widget _buildTypeOption(String imagePath, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedType = label;
        });
      },
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: selectedType == label ? Colors.teal.shade100 : const Color(0xFFB2EBF2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: selectedType == label ? Colors.teal : Colors.black,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEditableInfoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildEditableInfoColumn("Duración", "1 Mes", _durationController),
        _buildEditableInfoColumn("Frecuencia", "Diario", _frequencyController),
        _buildEditableInfoColumn("Comenzar", "Hoy", _startDateController),
      ],
    );
  }

  Widget _buildEditableInfoColumn(String title, String placeholder, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Container(
          width: 100,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
              ),
            ),
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _buildAddButton(VoidCallback onPressed) {
    return SizedBox(
      width: 180,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: const Text(
          "Agregar",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
