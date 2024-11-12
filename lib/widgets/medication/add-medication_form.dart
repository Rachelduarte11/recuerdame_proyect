import 'package:flutter/material.dart';
import 'package:recuerdame_proyect/domain/data/medication_repository.dart';
import 'package:recuerdame_proyect/domain/models/medication_model.dart';

class MedicationForm extends StatefulWidget {
  final Function onSubmit;

  MedicationForm({required this.onSubmit});

  @override
  _MedicationFormState createState() => _MedicationFormState();
}

class _MedicationFormState extends State<MedicationForm> {
  // Controllers for input fields
  final TextEditingController _medicationNameController = TextEditingController();
  final TextEditingController _durationController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _frequencyController = TextEditingController();

  String selectedType = "Tabletas"; // Default selected type
  String _selectedHour = "12:00 PM"; // Default selected hour
  List<String> hours = [
    "8:00 AM", "9:00 AM", "10:00 AM", "11:00 AM",
    "12:00 PM", "1:00 PM", "2:00 PM", "3:00 PM",
    "4:00 PM", "5:00 PM", "6:00 PM", "7:00 PM",
    "8:00 PM", "9:00 PM"
  ]; // Sample hours

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
          _buildSectionTitle("Notas de la toma"),
          const SizedBox(height: 4),
          TextField(
            controller: _medicationNameController,
            decoration: const InputDecoration(
              hintText: "Ejemplo: Tomar Ibuprofeno",
              hintStyle: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w100),
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
          _buildHourDropdown("Hora a tomar", _selectedHour),
          const SizedBox(height: 20),
          Center(
            child: _buildAddButton(() {
              _submitForm();
            }),
          ),
        ],
      ),
    );
  }

  // Method to get all the data when the form is submitted
  void _submitForm() {
    final String description = _medicationNameController.text;
    final String duration = _durationController.text;
    final String startDate = _startDateController.text;
    final String frequency = _frequencyController.text;

    // Create a new Medication instance
    final medication = MedicationModel(
      description: description,
      type: selectedType,
      duration: duration,
      frequency: frequency,
      start_date: startDate,
      hour_to_take: _selectedHour,
    );

    // Save it to the repository
    widget.onSubmit(medication);

    // Show a SnackBar confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Receta agregada!",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        duration: Duration(seconds: 2),
        action: SnackBarAction(
          label: 'OK',
          textColor: Colors.white,
          onPressed: () {
            // Code to execute when 'OK' is pressed
          },
        ),
      ),
    );

    // Clear the form after submission
    _clearForm();
  }

  // Method to clear the form fields and reset selections
  void _clearForm() {
    setState(() {
      _medicationNameController.clear();
      _durationController.clear();
      _startDateController.clear();
      _frequencyController.clear();
      selectedType = "Tabletas";
      _selectedHour = "12:00 PM";
    });
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
                fontWeight: FontWeight.w300,
                color: Colors.grey, // Non-bold placeholder style
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

  Widget _buildHourDropdown(String title, String selectedHour) {
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
          child: DropdownButton<String>(
            isExpanded: true,
            value: selectedHour,
            items: hours.map((hour) {
              return DropdownMenuItem(
                value: hour,
                child: Text(
                  hour,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                _selectedHour = newValue!;
              });
            },
            underline: Container(
              height: 1,
              color: Colors.grey.shade300,
            ),
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
