import 'package:flutter/material.dart';
import 'text_item.dart';
import 'textformfield_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Profile Page UI",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                      ),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://randomuser.me/api/portraits/men/46.jpg"),
                            radius: 60,
                          ),
                          Positioned(
                            bottom: 0,
                            right: -30,
                            child: MaterialButton(
                              onPressed: () {},
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Icon(
                                Icons.camera_alt,
                                size: 18,
                              ),
                              padding: EdgeInsets.all(8.0),
                              shape: CircleBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 28, right: 28),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextItem(
                      textValue: "School",
                    ),
                    TextFormFieldItem(
                      initialValue: "The New Technologies School",
                      hintText: "Your school",
                      inputType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    TextItem(
                      textValue: "Email Address",
                    ),
                    TextFormFieldItem(
                      initialValue: "a.fernandez@gmail.com",
                      hintText: "Your email address",
                      inputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextBlueItem(
                      textValue: "Name",
                    ),
                    TextFormFieldItem(
                      initialValue: "Alexandro Fernandez",
                      hintText: "Your Name",
                      inputType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextBlueItem(
                      textValue: "Nick Name",
                    ),
                    TextFormFieldItem(
                      initialValue: "Alex",
                      hintText: "Your nick name,",
                      inputType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextBlueItem(
                      textValue: "Emmergency Contact",
                    ),
                    TextFormFieldItem(
                      initialValue: "+330689786223",
                      hintText: "numbers",
                      inputType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: FlatButton(
                        minWidth: 200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.blue,
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        onPressed: () {
                          /*...*/
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.save),
                            SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              "Edit Profile",
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
