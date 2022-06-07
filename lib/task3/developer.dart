import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileFlutter extends StatefulWidget {
  const ProfileFlutter({Key? key}) : super(key: key);

  @override
  State<ProfileFlutter> createState() => _ProfileFlutterState();
}

class _ProfileFlutterState extends State<ProfileFlutter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Colors.green[900],
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Text('Neelam Rajpoot',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Text('Flutter Developer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  thickness: 3,
                  indent: 40,
                  endIndent: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 465,
                  child: ListView(
                    children: [
                      _buildCardViewWidget(
                          icon: const Icon(Icons.vpn_lock_sharp),
                          title: 'Websites'),
                      SizedBox(
                        height: 20,
                      ),
                      _buildCardViewWidget(
                          icon: const Icon(Icons.call), title: 'phone number'),
                      SizedBox(
                        height: 20,
                      ),
                      _buildCardViewWidget(
                        icon: const Icon(Icons.email_outlined),
                        title: 'Email Id',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _buildCardViewWidget(
                          icon: const Icon(Icons.biotech_rounded),
                          title: 'Twitter'),
                      SizedBox(
                        height: 20,
                      ),
                      _buildCardViewWidget(
                          icon: const Icon(Icons.auto_awesome_mosaic_rounded),
                          title: 'Instagram'),
                      SizedBox(
                        height: 20,
                      ),
                      _buildCardViewWidget(
                          icon: const Icon(Icons.account_box), title: 'Github'),
                      SizedBox(
                        height: 20,
                      ),
                      _buildCardViewWidget(
                          icon: const Icon(Icons.facebook), title: 'Facebook'),
                      SizedBox(
                        height: 20,
                      ),
                      _buildCardViewWidget(
                          icon: const Icon(Icons.telegram), title: 'Telegram'),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3,horizontal: 12),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Designed and Developed by Neelam Rajpoot Want to contact ?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   margin: EdgeInsets.all(3),
      //   height: 60,
      //   width: double.infinity,
      //
      //   decoration: BoxDecoration(
      //     color: Colors.greenAccent,
      //   ),
      //   child: TextButton(
      //     onPressed: (){},
      //     child: Text('Designed and Developed by Neelam Rajpoot Want to contact ?',
      //       textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16,),),
      //   ),
      //
      // ),
    ));
  }
}

_buildCardViewWidget({required Widget icon, required String title}) {
  return TextField(
    decoration: InputDecoration(
        prefixIcon: icon,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        hintText: title,
        hintStyle: TextStyle(
          color: Colors.greenAccent,
        )),
  );
}
