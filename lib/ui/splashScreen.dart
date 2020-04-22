import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gathrr/constants/data.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<Slide> slides = new List();
  List images=[
    'assets/images/welcomefour.jpeg',
    'assets/images/welcometwo.jpeg',
    'assets/images/welcomeone.jpeg',
    'assets/images/welcomethree.jpeg'
  ];
  List description =[
    'Our event app allows the attendees to browse through each profile and share the in-app digital e-card. E-Card helps to retainthe contact information for a longer period.',
    'Retain your attendee by giving the best in class event networking experience. Survey shows 70% attendee retention drop rate in the event by the same organiser. Gathrr in-app event attendee profile allows the attendee to meet the right people and save precious time',
    'Give your attendees the smoothest event check-in experience. Our in-built QR code scanner allows the attendees to check-in in fration of a second and use the time to browse peer profilles',
    'Keep your attendees up-to date by sending in-app push updates and whereabouts for the events. Help the attendees to save time and use it for other important things inside the event'
  ];
  int i=0;
  List  heading=[
    'DIGITAL E-CARD',
    'EVENT NETWORKING',
    'EVENT CHECK-IN',
    'REAL-TIME SCHEDULE'
  ];

  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        title: heading[0],
        description: description[0],
        pathImage: images[0],
       // heightImage: MediaQuery.of(context).size.height/50,
        backgroundColor: Color(0xFFFFFFFF),
        styleTitle: TextStyle(color: Color(0xff0a2b52),fontSize: 25),
        styleDescription: TextStyle(color: Color(0xff0a2b52),fontSize: 15,fontFamily: 'PF'),
      ),
    );
    slides.add(
      new Slide(
          title: heading[1],
          description: description[1],
          pathImage: images[1],
          styleTitle: TextStyle(color: Color(0xff0a2b52),fontSize: 25),
          styleDescription: TextStyle(color: Color(0xff0a2b52),fontSize: 15,fontFamily: 'PF'),
          backgroundColor: Color(0xFFFFFFFF)

      ),
    );
    slides.add(
      new Slide(
          title: heading[2],
          description:description[2],
          pathImage: images[2],heightImage: height,
          //widthImage: MediaQuery.of(context).size.width-60,

          styleTitle: TextStyle(color: Color(0xff0a2b52),fontSize: 25),
          styleDescription: TextStyle(color: Color(0xff0a2b52),fontSize: 15,fontFamily: 'PF'),
          backgroundColor: Color(0xFFFFFFFF)

      ),

    );
    slides.add(
        new Slide(
            title: heading[3],
            description:description[3],
            pathImage: images[3],
            styleTitle: TextStyle(color: Color(0xff0a2b52),fontSize: 25),
            styleDescription: TextStyle(color: Color(0xff0a2b52),fontSize: 15,fontFamily: 'PF'),
            backgroundColor: Color(0xFFFFFFFF)
        )
    );


  }

  Widget renderNextBtn() {
    return Container(
      padding: EdgeInsets.only(bottom:10),
      height: 30,
      width:100,
      decoration:

      BoxDecoration(

          borderRadius:BorderRadius.circular(15.0),
          color: Color(0x33000000)
      ),
      child: Center(
        child: Icon(
          Icons.navigate_next,
          color: Colors.black,
          size: 30.0,
        ),
      ),
    );
  }

  Widget renderDoneBtn() {
    return Container(
      height: 30,
      width:100,
      decoration:BoxDecoration(

          borderRadius:BorderRadius.circular(15.0),
          color: Color(0x33000000)
      ),
      child: Center(
        child: Icon(
          Icons.done,
          color: Colors.black,

        ),
      ),
    );
  }

  Widget renderSkipBtn() {
    return Container(

      height: 30,
      width:100,
      decoration:

      BoxDecoration(

        borderRadius:BorderRadius.circular(15.0),
        color: Color(0x33000000)
      ),
      child: Center(child: Text ('Skip',style: TextStyle(fontFamily:'PF',fontSize: 15 ),))
    );
  }
  void onDonePress() {
   /* Navigator.push(
        context, MaterialPageRoute(builder: (context) => Loginpage()));*/

  }

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height/50;
    return IntroSlider(
        renderSkipBtn: this.renderSkipBtn(),
      /*  colorSkipBtn: Color(0xFF3AC0F0),
        highlightColorSkipBtn: Color(0xff00234F),*/

        // Next button
        renderNextBtn: this.renderNextBtn(),

        // Done button
        renderDoneBtn: this.renderDoneBtn(),
        onDonePress: this.onDonePress,
        /*colorDoneBtn: Color(0x33000000),
        highlightColorDoneBtn: Color(0xff000000),*/

        // Dot indicator
        colorDot: Colors.grey.shade300,
        colorActiveDot: Color(0xFF6ACDF2),
        sizeDot: 13.0,

        slides:slides,


      );

  }


}
