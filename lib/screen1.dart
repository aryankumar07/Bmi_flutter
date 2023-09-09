import 'package:flutter/material.dart';
import 'package:bmi/height_field.dart';
import 'package:bmi/weight_field.dart';

class HomeScreen extends StatelessWidget{

  HomeScreen({super.key});


  String calculateBmi(double height,double weight){

    return (weight/(height*height)).toString();
  }

  TextEditingController heightFieldText = TextEditingController();
  TextEditingController weightFieldText = TextEditingController();

  @override
  Widget build(context) {
    
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("enter your Height here"),
              Padding(
                padding: const EdgeInsets.all(60),
                child: HeightField(heightFieldText),
              ),
              const Text("enter your Weight  here"),
              Padding(
                padding: const EdgeInsets.all(60),
                child: WeightField(weightFieldText),
              ),
              const Text("Press to Calculate BMI : "),
              ElevatedButton(
                onPressed: () {
                  double h = double.parse(heightFieldText.value.text);
                  double w = double.parse(weightFieldText.value.text);
                  String bmi = calculateBmi(h,w);
                  heightFieldText.text = "";
                  weightFieldText.text= "";
                  // print(bmi);
                  showDialog(
                    context: context,
                     builder: (context){
                      return  AlertDialog(
                        content: Text(
                          "Your calculated Bmi is : $bmi"
                        ),
                      );
                     }
                     );
                },
                 child: const Text(
                  "BMI"
                 ))
            ],
          )
        ),
      ),
    );

  }
}