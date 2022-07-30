import 'package:BSugar/widgets/apptext.dart';
import 'package:BSugar/widgets/topic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomPage extends StatefulWidget {
  WelcomPage({Key key}) : super(key: key);

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  List images = [
    "pix8.png",
    "pix1.png",
  ];
  List text = [
    'HIGH BLOOD SUGAR',
    "LOW BLOOD SUGAR",
  ];
  List text2 = [
    "Fasting Plasma Glucose (FPG) are determined by taking a blood sample from someone who has fasted for at least 8hrs. it can be measured in mmol/L or mg/dL. With the use of Glucometer you can check your blood sugar. Hyperglycemia is when your blood sugar is higher than normal. When you have diabetes, your blood sugar (aka blood glucose) levels may be consistently high. Over time, this can damage your bodyand lead to many other problems. Many things can cause high blood sugar (hyperglycemia), including being sick, being stressed, eating more than planned, and not giving yourself enough insulin. Over time, high blood sugar can lead to long-term, serious health problems. Symptoms of high blood sugar include -Feeling very tired, Feeing thirsty, Having blurry vision, Needing to urinate (pee) more often.  ",
    "When you diet or fast, the liver keeps your levels normal by turning fat and muscle into sugar. A few people's levels may fall somewhat lower. Hypoglycemia is when the blood sugar is lower than normal. If you feel shaky, sweaty, or very hungry or have other symptoms, check your blood sugar,  If your blood sugar is lower than 70 mg/dL or 3.9 mmol/L, do one of the following immediately - Take four glucose tablets, Drink four ounces of fruit juice, Drink four ounces of regular soda, not diet soda, Eat four pieces of hard candy. ",
  ];
  List text3 = [
    "Hyperglycemia",
    "Hypoglycemia",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/" + images[index],
                  ),
                  fit: BoxFit.cover),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 100, left: 40, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Topic(text: "BLOOD SUGAR"),
                      AppText(
                        text: text[index],
                      ),
                      AppText(
                        text: text3[index],
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 80, right: 10),
                        width: 200,
                        height: 100,
                        child: SingleChildScrollView(
                          child: Center(
                            child: AppText(
                              text: text2[index], 
                              size: 14,
                              color: Colors.black,
                              
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                      children: List.generate(2, (indexDots) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 3),
                      width: 8,
                      height: index == indexDots ? 25 : 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color:
                            index == indexDots ? Colors.black : Colors.black54,
                      ),
                    );
                  }))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
