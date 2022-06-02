import 'dart:ffi';

import 'package:flutter/material.dart';

import 'personal_detail.dart';

class DoctorMaterial extends StatefulWidget {
  const DoctorMaterial({Key? key}) : super(key: key);

  @override
  State<DoctorMaterial> createState() => _DoctorMaterialState();
}

class _DoctorMaterialState extends State<DoctorMaterial> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Find & Book',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Bangalore',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                          size: 25.0,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search doctors,specialities,clinics,hospitals',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    ),
                  ),
                ),
              ),

        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Search by Health concern',
                            style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w700,
                                fontSize: 15),
                          ),
                          Text(
                            'Explore more',
                            style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontWeight: FontWeight.w700,
                                fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 230,
                        child: GridView.count(
                          crossAxisCount: 3,
                          //mainAxisSpacing: 20,
                          crossAxisSpacing: 1,
                          children: List.generate(
                            6,
                                (index) {
                              return Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                        'https://picsum.photos/250?image=1',
                                        height: 60),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(('Piles surgery')),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(height: 10,),
                      Text('Search by speciality',style:TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w700

                      ) ),
                      SizedBox(height: 20,),
                      Container(

                        height: 500,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: GridView.count(

                          crossAxisCount: 2,
                          scrollDirection: Axis.vertical,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                          childAspectRatio: 1.8,


                          children: List.generate(
                            12,
                                (index) {
                              return Container(
                                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                height: 100,
                                //  width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                ),
                                child: Row(

                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.network(
                                        'https://picsum.photos/250?image=1',
                                        height: 60,width: 60,),
                                    ),
                                    SizedBox(width: 10,),
                                    Text('Piles surgery',
                                      style: TextStyle(color: Colors.black,fontSize: 14,fontWeight:FontWeight.w600),),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),

                    ],
                  ),
        ),






            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PersonalDetails()));
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
