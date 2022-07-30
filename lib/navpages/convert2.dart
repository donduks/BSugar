import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Convert2 extends StatefulWidget {
  Convert2({Key key}) : super(key: key);

  @override
  State<Convert2> createState() => _Convert2State();
}

class _Convert2State extends State<Convert2> {
   final _textController = TextEditingController();
  double multi = 18;
  double result = 0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/pix4.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only( left: 40, right: 10),
                    height: 200,
                    child: Center(
                      child: Text(
                        result.toString(),
                        style: TextStyle(fontSize: 35, color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    
                    child: Text("mg/dL"),
                  )
                ],
              ),
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Enter your Bood sugar (mmol/L)',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    //clear what is currently in text field
                    _textController.clear();
                  },
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            MaterialButton(
              onPressed: () {

                setState(() {
                  result = double.parse(_textController.text) *
                          double.parse(multi.toString());
                });



              },
               color: Colors.green,
                  child: Text(
                    'Convert',
                    style: TextStyle(color: Colors.white),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
