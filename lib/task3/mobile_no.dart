import 'package:flutter/material.dart';

import 'practo_care.dart';

class MobileNo extends StatelessWidget {
  const MobileNo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.black38,
                    size: 25.0,
                  ),
                  Spacer(),
                  Icon(
                    Icons.help,
                    color: Colors.black,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Help',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Enter your mobile number',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black38),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        '+ 91',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
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
                            hintText: 'Enter a mobile no.',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'By contiuning, you agree to our',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black45,
                          fontSize: 18,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PractoCare()));
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.all(Radius.circular(5)),
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
