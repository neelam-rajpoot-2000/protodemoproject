import 'package:flutter/material.dart';

import 'medical.dart';
import 'personal.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(text: "Personal"),
                  Tab(text: "Medical"),
                  Tab(text: "Lifestyle"),
                ],
              ),
              title: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Rahul Thakur'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
               Personal(),
               Medical(),
                Container(),
              ],
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.lightBlue,
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Text('Complete profile',
                        style: TextStyle(fontSize:18,fontWeight:FontWeight.w400,color: Colors.white),
                        textAlign: TextAlign.center,

                      ),
                      Text('45% completed',
                        style: TextStyle(fontSize:10,fontWeight:FontWeight.w400,color: Colors.white),
                        textAlign: TextAlign.center,

                      ),
                    ],
                  ),
                ),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
