import 'package:flutter/material.dart';

class HeightField extends StatefulWidget{

  HeightField(this.dummy,{super.key});

  TextEditingController dummy = TextEditingController();


 @override
  State<HeightField> createState() {
    
    return _HeightField(dummy);
  }

}


class _HeightField extends State<HeightField>{

  _HeightField(this.heightField);

  final TextEditingController heightField;

  @override
  void dispose() {
    heightField.dispose();
    super.dispose();
  }


  @override
  Widget build( context) {

    return TextField(
      controller: heightField,
    );
  }

}