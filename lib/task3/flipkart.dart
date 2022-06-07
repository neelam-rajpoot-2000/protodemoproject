import 'package:flutter/material.dart';

class MyRewards extends StatefulWidget {
  const MyRewards({Key? key}) : super(key: key);

  @override
  State<MyRewards> createState() => _MyRewardsState();
}

class _MyRewardsState extends State<MyRewards> {
  final List item = [
    {
      'image': 'https://images.news18.com/ibnlive/uploads/2019/08/flipkart.jpg',
      'title': 'BabyCare Saving pass',
      'subtitle': 'Valid till 31Oct 2021'
    },
    {
      'image': 'https://images.news18.com/ibnlive/uploads/2019/08/flipkart.jpg',
      'title': '\u{20B9}${'17 Off On Floor Cleaner'}',
      'subtitle': 'Valid till 31Nov 2021'
    },
    {
      'image': 'https://images.news18.com/ibnlive/uploads/2019/08/flipkart.jpg',
      'title': '\u{20B9}${'9 Off Bathroom Cleaner'}',
      'subtitle': 'Valid till 31Nov 2021'
    },
    {
      'image': 'https://images.news18.com/ibnlive/uploads/2019/08/flipkart.jpg',
      'title': '\u{20B9}${'15 Off on Dabur Red Past'}',
      'subtitle': 'Valid till 31Nov 2021'
    },
    {
      'image': 'https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'title': 'Grocery offers from boards',
      'subtitle': 'Valid till 31Nov 2021'
    },
    {
      'image': 'https://images.news18.com/ibnlive/uploads/2019/08/flipkart.jpg',
      'title': 'Buy this product and Get addi',
      'subtitle': 'Valid till 31Nov 2021'
    },
    {
      'image': 'https://images.news18.com/ibnlive/uploads/2019/08/flipkart.jpg',
      'title': 'Buy this product and Get addi',
      'subtitle': 'Valid till 31Nov 2021'
    },
    {
      'image': 'https://images.news18.com/ibnlive/uploads/2019/08/flipkart.jpg',
      'title': 'Buy this product and Get addi',
      'subtitle': 'Valid till 31Nov 2021'
    },


  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'My Rewards',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    'Add Coupon',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 14),
                    margin: EdgeInsets.symmetric(vertical: 17, horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.blue, width: 1),
                    ),
                    child: Center(
                        child: Text(
                      'All',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 14),
                    margin: EdgeInsets.symmetric(vertical: 17, horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black12, width: 1),
                    ),
                    child: const Center(
                        child: Text(
                      'SuperCoin Zone',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 14),
                    margin: EdgeInsets.symmetric(vertical: 17, horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black12, width: 1),
                    ),
                    child: const Center(
                        child: Text(
                      'GameZone',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 14),
                    margin: EdgeInsets.symmetric(vertical: 17, horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black12, width: 1),
                    ),
                    child: const Center(
                        child: Text(
                      'Videos',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black12,
              height: 650,
              width: double.infinity,
              child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                children: List.generate(item.length, (index) {
                  return _buildCardViewWidget(
                      imageUrl: item[index]['image'],
                      title: item[index]['title'],
                      subtitle: item[index]['subtitle']);
                }),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  _buildCardViewWidget(
      {required String imageUrl,
      required String title,
      required String subtitle}) {
    return Card(

      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black12, width: 2),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    imageUrl,
                  ),
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            SizedBox(height: 5,),
            Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Center(
                child: Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Text(
                'T&C',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
