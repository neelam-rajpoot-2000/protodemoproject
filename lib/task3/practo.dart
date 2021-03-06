import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mobile_no.dart';

class PractoFile extends StatefulWidget {

  PractoFile({Key? key}) : super(key: key);

  @override
  State<PractoFile> createState() => _PractoFileState();
}

class _PractoFileState extends State<PractoFile> {

  TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _controller.dispose();
    super.dispose();
  }
  bool _show = false;
  int _currentIndex = 0;

  final imgList = [
    'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=2000',
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];




  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 470,
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: ListView(
                  children: [
                    Row(
                       children: [
                         FlutterLogo(size: 50,),
                         SizedBox(width: 10,),
                         Text(
                           'practo',
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 45,
                               fontWeight: FontWeight.w900),
                         ),
                       ],
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    //  Image.asset('assets/images/img.png',width: 10,height: 20,fit: BoxFit.cover,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            viewportFraction: 0.9,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              setState(
                                    () {
                                  _currentIndex = index;
                                },
                              );
                            },
                          ),
                          items: imgList
                              .map(
                                (item) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                elevation: 0.6,
                                shadowColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.network(
                                        item,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: 300,
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                              .toList(),
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
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.map((urlOfItem) {
                        int index = imgList.indexOf(urlOfItem);
                        return Container(
                          width: 10.0,
                          height: 10.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? Color.fromRGBO(0, 0, 0, 0.8)
                                : Color.fromRGBO(0, 0, 0, 0.3),
                          ),
                        );
                      }).toList(),

                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 18),
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
                              child:  TextField(
                                controller: _controller,
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
                        onPressed: () {
                          _showModalBottomSheet();
                          setState(() {

                          });
                        },
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
        bottomNavigationBar:Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: InkWell(
            onTap: () {
              // _showDialogBox();
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => MobileNo()));
              if(_controller.text.isEmpty || _controller.text.length<=9){
                _showDialogBox();
              }
              else{
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MobileNo()));
              }
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
         // bottomSheet: _showBottomSheet(),
      ),
    );

  }
  _showDialogBox(){
    return showDialog(
      barrierDismissible: false,


      context: context,
      builder: (BuildContext context){
        return Dialog(
          elevation: 16,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
             height: 230.0,


            child: Column(
              children: [
              //  FlutterLogo(size: 50,),
                ClipRRect(
                  borderRadius:
                  BorderRadius.circular(50),

                  child: Image.network('https://picsum.photos/250?image=1',width: 50,height: 50,fit: BoxFit.cover),
                ),
                SizedBox(height: 5,),
                Text('Are you sure,Check your Mobile number',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'helvetica_neue_light',
                  ),
                  textAlign: TextAlign.center,),
                SizedBox(height: 5,),
                Text('+91-XXXXXXXX45',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'helvetica_neue_light',
                  ),
                 ),
               SizedBox(height: 30,),
               Row(
                // crossAxisAlignment: CrossAxisAlignment.s,
                 mainAxisAlignment: MainAxisAlignment.end,
                 mainAxisSize: MainAxisSize.max,
                 children: [


                   TextButton(
                     onPressed: () => Navigator.pop(context, 'cancel'),
                     child:  Text('Cancel',style: TextStyle(fontSize: 20),),
                   ),
                   TextButton(
                     onPressed: () => Navigator.pop(context, 'ok'),
                     child:  Text('OK',style: TextStyle(fontSize: 20)),
                   ),

                 ],
               )
              ],
            ),

          ),
        );
      },
    );
  }
  _showModalBottomSheet()
  {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(

              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ClipRRect(
                  borderRadius:
                  BorderRadius.circular(50),

                  child: Image.network('https://cdn.pixabay.com/photo/2016/03/27/19/43/samsung-1283938__340.jpg',width: 70,height: 70,fit: BoxFit.cover,alignment:Alignment.center),
                ),

                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Send email'),
                  onTap: () {
                    print('Send email');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Call phone'),
                  onTap: () {
                    print('Call phone');
                  },
                ),
              ],
            ),
          );
        }
    );
  }
}



