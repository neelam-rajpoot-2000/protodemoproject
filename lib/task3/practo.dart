import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mobile_no.dart';

class PractoFile extends StatelessWidget {
  const PractoFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 450,
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: ListView(
                  children: [
                    Text(
                      'practo',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    //  Image.asset('assets/images/img.png',width: 10,height: 20,fit: BoxFit.cover,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(
                              'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=2000',
                            ),
                            width: 120,
                            height: 180,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Video consult top doctors from the comfort of your home',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's get started! Enter your mobile number",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
//padding: EdgeInsets.symmetric(vertical: 0 ,horizontal:10),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black38),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              '+ 91',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black38,
                              size: 25.0,
                            ),
                            Container(
                              height: 25,
                              width: 2,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: const TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Mobile no.',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Trouble signing in?",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black45,
                            fontSize: 18,
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MobileNo()));
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.lightBlue,
              ),
              child: Center(
                child: Text(
                  'Contiune',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
