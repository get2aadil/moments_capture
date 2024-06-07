// Importing necessary Flutter and project-specific packages.
import 'package:flutter/material.dart';
import 'package:moments_capture/constants.dart';

// TextInputField is a StatelessWidget for creating text input fields.
class TextInputField extends StatelessWidget {
  // Declaration of variables to manage state and configuration.
  final TextEditingController controller; // Controller for the text field.
  final String labelText;                 // Text to display as a label in the text field.
  final bool isObscure;                   // Flag to determine if the text should be obscured (for passwords).
  final IconData icon;                    // Icon to display in the text field.

  // Constructor for TextInputField, initializing it with required parameters.
  const TextInputField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.isObscure = false,               // Default is false, meaning text is not obscured.
    required this.icon,
  }) : super(key: key);                   // Constructor initializer list.

  @override
  Widget build(BuildContext context) {
    // Building the actual widget.
    return TextField(
      controller: controller,             // Assigning the text controller.
      decoration: InputDecoration(
        labelText: labelText,             // Setting the label text of the input field.
        prefixIcon: Icon(icon),           // Adding an icon as a prefix inside the text field.
        labelStyle: const TextStyle(
          fontSize: 20,                   // Style for the label with a font size of 20.
        ),
        enabledBorder: OutlineInputBorder( // Border style when the text field is enabled.
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: borderColor,         // Uses borderColor from constants for the border.
            )),
        focusedBorder: OutlineInputBorder( // Border style when the text field is focused.
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: borderColor,         // Same borderColor used for focused state.
            )),
      ),
      obscureText: isObscure,             // Determines if the text field obscures text.
    );
  }
}
