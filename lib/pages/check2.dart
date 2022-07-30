
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Check2 extends StatefulWidget {
  Check2({Key key}) : super(key: key);

  @override
  State<Check2> createState() => _Check2State();
}

class _Check2State extends State<Check2> {

   final _textController = TextEditingController();
  double result = 0;
  String message = "";
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/pix6.png",
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
                      "Fasting Blood Sugar range - 70 mg/dL to 99 mg/dL is normal, 100 mg/dl to 125 mg/dl is prediabetes and anything above 122 mg/dL is T2 Diabetes",
                      style: TextStyle(
                        color: Colors.black,
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
                    labelText: "Enter BloodSugar mg/dl",
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

                            if (result > 99) {
                              message = 'BloodSugar is high';
                            } else if (result < 70) {
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
                      child: Text("mg/dl", style: TextStyle(color: Colors.white),),
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