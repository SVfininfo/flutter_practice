import 'package:flutter/material.dart';

class FormFields extends StatefulWidget {
  const FormFields({Key? key}) : super(key: key);

  @override
  State<FormFields> createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Forms",textAlign:TextAlign.center,),
      ),
    );
  }
}
Widget _buildImageColumn() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.black26,
    ),
    child: Column(
      children: [
      ],
    ),
  );
}