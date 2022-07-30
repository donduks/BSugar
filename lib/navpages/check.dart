

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  Check({Key key}) : super(key: key);

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  final _textController = TextEditingController();
  double result = 0;
  String message = "";
  var siu = "mmol/L";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/pix3.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 80, left: 20, right: 10),
                width: 200,
                height: 100,
                child: SingleChildScrollView(
                  child: Center(
                    child: Text(
                      "Fasting Blood Sugar range - 4 mmol/L to 6 mmol/L is normal, 6.1 mmol/L to 6.9 mmol/L is prediabetes and anything above 7 mmol/L is T2 Diabetes.Talk to your doctor about how to keep your blood sugar levels within your target range. Your doctor may suggest the following: Be more active. Regular exercise can help keep your blood sugar levels on track. Take medicine as instructed.Check your blood sugar as directed by your doctor. Check more often if your are sick or if you are concerned about high or low blood sugar, Follow your diabetes meal plan. Ask your doctor or dietitian for help if you are having trouble sticking to it.  ",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.blueGrey,
                    filled: true,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        //clear what is currently in text field
                        _textController.clear();
                      },
                    ),
                    labelText: "Enter BloodSugar mmol/L",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    )),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            result = double.parse(_textController.text); 

                            if (result > 6) {
                              message = 'BloodSugar is high';
                            } else if (result < 3.9) {
                              message = 'BloodSugar is low';
                            } else {
                              message = 'ok';
                            }
                          });
                        },
                        color: Colors.green,
                        child: Text(
                          'Check',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  SizedBox(width: 200,),
                  
                ],
              ),
               SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Opacity(
                    opacity: 0.7,
                    child: Container(
                      height: 30,
                      width: 70,
                      alignment: Alignment.center,
                      color: Colors.blueAccent,
                      child: Text(result.toString()), 
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                      width: 70,
                      child: Text("mmol/L"),
                  )
                ],
              ),

              Opacity(
                opacity: 0.7,
                child: Container(
                  height: 30,
                  width: 400,
                  alignment: Alignment.center,
                  
                  child: Text(message.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
