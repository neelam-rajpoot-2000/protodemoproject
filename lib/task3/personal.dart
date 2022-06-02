import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _SecondPageState();
}

class _SecondPageState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Rahul Thakur',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  trailing: ClipRRect(
                    borderRadius:
                    BorderRadius.circular(50),
                    child: Image.network('https://picsum.photos/250?image=1',width: 50,height: 70,),
                  )
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Contact Number',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                trailing: Text(
                  '+91-7623793397',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Gender',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                trailing: Text(
                  'Male',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Date of Birth',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                trailing: Text(
                  'yyyy mm dd',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Blood Group',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                trailing: Text(
                  'A+',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Marital Status',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                trailing: Text(
                  'Single',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Height',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                trailing: Text(
                  '5 ft 9 in',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Weight',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                trailing: Text(
                  '61 kgs',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Emergency Contact',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Brother',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '+91-8754954697',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Location',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                trailing: Text(
                  'Noida',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),

          ],
          scrollDirection: Axis.vertical,
        ));
  }
}
