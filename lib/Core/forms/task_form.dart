import 'package:flutter/material.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/shared/widgets/text_input_field.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: Units.getHeight(context: context, widgetheight: 10),
        children: [
          TextInputField(
            controller: _titleController,
            hintText: 'eg: Meeting with client',
          ),
          TextInputField(controller: _titleController, hintText: 'Description'),
        ],
      ),
    );
  }
}
