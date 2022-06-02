import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'find_&_book.dart';

class PractoCare extends StatefulWidget {
  const PractoCare({Key? key}) : super(key: key);

  @override
  State<PractoCare> createState() => _PractoCareState();
}

class _PractoCareState extends State<PractoCare> {
  String? _selectedLocation;
  List dropDownList = [
    'Bangalore',
    'Mumbai',
    'Delhi',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      height: 40,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: DefaultTabController(
                        length: 2,
                        child: TabBar(
                          unselectedLabelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(5), // Creates border
                              color: Colors.purpleAccent),
                          tabs: [
                            Tab(
                              child: Text(
                                "Explore",
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Plus",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.account_balance_wallet_outlined),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, size: 20),
                      DropdownButton<String>(
                        value: _selectedLocation,
                        items: dropDownList
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(
                                  e.toString(),
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedLocation = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),

                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Text(
                                'practo',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                'care',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900),
                              ),
                            ]),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'You are in safe hands',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Choose the experts in end to end surgical care.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7),
                                ),
                                border:
                                    Border.all(width: 2, color: Colors.white),
                              ),
                              child: Text(
                                'Know more',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=2000',
                          ),
                          width: 120,
                          height: 180,
                        ),
                      ),
                    ],
                  ),
                ),

                Text(
                  'Our Offerings',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 165,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12, width: 2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=2000',
                              ),
                              width: 120,
                              height: 150,
                            ),
                          ),
                          Text(
                            'Find Doctors Near you',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 165,
                      padding: EdgeInsets.all(7),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12, width: 2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=2000',
                              ),
                              width: 120,
                              height: 150,
                            ),
                          ),
                          Text(
                            'Find Doctors Near you',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 110,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12, width: 2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=2000',
                              ),
                              width: 120,
                              height: 110,
                            ),
                          ),
                          Text(
                            'Find ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 110,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12, width: 2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=2000',
                              ),
                              width: 120,
                              height: 110,
                            ),
                          ),
                          Text(
                            'Find ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 110,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12, width: 2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=2000',
                              ),
                              width: 120,
                              height: 110,
                            ),
                          ),
                          Text(
                            'Find ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DoctorMaterial()));
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
