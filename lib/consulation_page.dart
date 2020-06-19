import 'package:flutter/material.dart';
import 'package:heartmonitorapp/moods.dart';
import 'package:heartmonitorapp/styleguide.dart';
import 'package:heartmonitorapp/utils.dart';

class Consultation extends StatefulWidget {
  @override
  _ConsultationState createState() => _ConsultationState();
}

class _ConsultationState extends State<Consultation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBgColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.topCenter,
              overflow: Overflow.visible,
              children: <Widget>[
                _buildBackgroundCover(),
                _buildGreeting(),
                _buildMoodsHolder(),
              ],
            ),
            SizedBox(height: 60.0,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _buildNotificationCard(),
                  _buildNextAppointment(),
                  _buildNextAppointmentInfo()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildBackgroundCover() {
    return Container(
      height: 260.0,
      decoration: BoxDecoration(
        gradient: purpleGradient,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
    );
  }

  _buildGreeting() {
    return Positioned(
      left: 20.0,
      bottom: 90.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hi Kiran',
          style: greetingTitleStyle
          ),
          SizedBox(height: 10,),
          Text('How are you feeling today?',
          style: greetingSubtitleStyle,
          ),
        ],
      ),
    );
  }

  _buildMoodsHolder() {
    return Positioned(
        bottom: -45,
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width-40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(28)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 5.5,
                blurRadius: 5.5,
              )
            ]
          ),
          child: MyMoods(),
        ),
    );
  }

  _buildNotificationCard() {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: lightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          Icons.check_box,
          color: Colors.white,
          size: 32,
        ),
        title: Text('Your Visit with \nDr. Hegde',style: notificationTitleStyle,),
        trailing: OutlineButton(
          onPressed: () {},
          color: Colors.transparent,
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          child: Text('Review & Notes',style: notificationButtonStyle,),
        ),
      ),
    );
  }

  _buildNextAppointment() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Your Next Appointment', style: nextAppointmentTitleStyle,),
          Text('See All', style: nextAppointmentSubtitle,),
        ],
      ),
    );
  }

  _buildNextAppointmentInfo() {
     return Container(
       padding: EdgeInsets.symmetric(vertical: 14.0,horizontal: 18.0),
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(18),
       ),
       child: Column(
         children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               CircleAvatar(
                 backgroundColor: Colors.grey,
                 backgroundImage: NetworkImage(USER_IMAGE),
                 radius: 36,
               ),
               SizedBox(width: 12.0,),
               RichText(
                   text: TextSpan(
                     text: 'Dr. Harivind', style: AppointmentMainStyle,
                     children: [
                       TextSpan(
                         text: '\nTuesday,May 5th at 8:00 am',
                         style: appointmentDateStyle,
                       ),
                       TextSpan(
                         text: '\nRamaiah Hospital, Bel Road',
                         style: appointmentVenueStyle,
                       ),
                     ]
               ))
             ],
           ),
           SizedBox(height: 8.0,),
           Divider(
             color: Colors.grey[200],
             height: 3.0,
             thickness: 1,
           ),
           SizedBox(height: 8.0,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               _iconBuilder(Icons.check_circle,'Check In'),
               _iconBuilder(Icons.clear,'Cancel'),
               _iconBuilder(Icons.calendar_today,'Calendar'),
               _iconBuilder(Icons.directions,'Directions'),
             ],
           )
         ],
       ),
     );
  }

  _iconBuilder(icon,title) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 28,
          color: Colors.black,
        ),
        SizedBox(height: 8.0,),
        Text(
          title,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color:  Colors.black,
          ),
        )
      ],
    );
  }

}
