import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      //color: Colors.pink,
      alignment: Alignment.bottomCenter,
      child: ListView(
        children: [
          //Text("Whatsapp",style: TextStyle(fontSize: 200),),

          InkWell(splashColor: Colors.grey,child: Text("https://www.facebook.com/rahat.ahamed.953",style: TextStyle(
            color: Colors.indigoAccent
          ),),onTap: () {launch("https://www.facebook.com/rahat.ahamed.953");print("launch now");}),Text("Whatsapp"),
          Text("jjjj"),
          Text("Whatsapp"),
          Text("Whatsapp"),



        ],
      ),
    );
  }
}
