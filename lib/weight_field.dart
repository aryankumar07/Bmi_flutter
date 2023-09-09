import 'package:flutter/material.dart';

class WeightField extends StatefulWidget{

WeightField(this.dummy,{super.key});

TextEditingController dummy = TextEditingController();

@override
  State<WeightField> createState() {

    

    return _WeightField(dummy);
  }

}

class _WeightField extends State<WeightField>{

  _WeightField(this.weightField);

  final TextEditingController weightField;

  @override
  Widget build( context) {
    return TextField(
      controller: weightField,
    );
  }
}