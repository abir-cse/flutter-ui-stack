import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final c3_marginTop = (3*screenWidth/4)-(screenWidth/8);
    final c3_marginLeft = (screenWidth/2)-(screenWidth/8);
    final c4_marginTop = (3*screenWidth/4)-(screenWidth/8)+10;
    final c4_marginLeft = (screenWidth/2)-(screenWidth/8)+10;
    final inText_Top = c3_marginTop+(screenWidth/8)-10;
    final inText_Left = c3_marginLeft+(screenWidth/8)-10;
    final info_MarginTop = c3_marginTop+(screenWidth/4)+5;
    final info_marginLeft = (screenWidth/2)-10;
    final scrollMarginTop = info_MarginTop+30;
    print(screenHeight);
    print(screenWidth);
    print(screenWidth-100);
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Color.fromRGBO(232, 80, 91, 1.0),
        selectedItemColor : Colors.white,
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        items : <BottomNavigationBarItem> [
          BottomNavigationBarItem (icon: Icon(Icons.layers), title: Text(''), ),
          BottomNavigationBarItem (icon: Icon(Icons.card_travel), title: Text('')),
          BottomNavigationBarItem (icon: Icon(Icons.account_circle), title: Text('')),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            overflow: Overflow.visible,
            //alignment: Alignment.,
            children: <Widget>[
              // rectangle
              Container (
                width: screenWidth,
                height: (screenWidth-100)/2,
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle
                ),
              ),
              // circle

              Container (
                width: screenWidth-(screenWidth/4),
                height: screenWidth-(screenWidth/4),
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                ),
              ),
              Container (
                margin: EdgeInsets.only(left: screenWidth/4),
                alignment: Alignment.topRight,
                width: screenWidth-(screenWidth/4),
                height: screenWidth-(screenWidth/4),
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),

              Container (
                height: (screenWidth/4),
                width: (screenWidth/4),

                margin: EdgeInsets.only(top: c3_marginTop, left: c3_marginLeft),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(232, 80, 91, 1.0),
                    shape: BoxShape.circle
                ),
              ),
              Container (
                height: (screenWidth/4)-20,
                width: (screenWidth/4)-20,

                margin: EdgeInsets.only(top: c4_marginTop, left: c4_marginLeft,),
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: inText_Top, left: inText_Left),
                child: Text(
                  'IN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 20,
                  ),
                ),

              ),

              Container(
                margin: EdgeInsets.only(top: info_MarginTop, left: info_marginLeft),
                child: Icon (
                  Icons.info_outline,
                  color: Color.fromRGBO(232, 80, 91, 1.0),
                ),
              ),


              Container(
                height: 150,
                padding: EdgeInsets.only(top: 30, left: 50.0, right: 20.0),
                alignment: Alignment.topLeft,
                child: Column (
                    children: [
                      Column (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello,',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.5,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Peter Parker',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.5,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ]
                ),
              ),
              // present - absent
              Container(
                height: 300,
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child:  Row (
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column ( //present - days
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PRESENT',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '17 Days',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column ( //present - days
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ABSENT',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '3 Days',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    Column ( //present - days
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'LATE',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '2 Days',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    Column ( //present - days
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'LEAVE',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '2 Days',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: scrollMarginTop),
                height: 30.0,
                child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Notifications',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Events',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Meetings',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                          color: Color.fromRGBO(232, 80, 91, 100),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 16,
                        ),
                      ),
                    ]
                ),
              ),

              Container(margin: EdgeInsets.only(top: scrollMarginTop+40,),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Container(
                    child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                      _buildCardItem('Loram ipsum dollar', 'Loram ipsum dollar'),
                      _buildCardItem( 'Loram ipsum dollar', 'Loram ipsum dollar'),
                      _buildCardItem('Loram ipsum dollar', 'Loram ipsum dollar'),
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
  // card
  Widget _buildCardItem(String cardTitle, String cardDescription) {
    return Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
        child: Material(
            color: Colors.white,
            elevation: 40.0,
            borderRadius: BorderRadius.circular(5.0),
            shadowColor: Color(0x40212121),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Padding (
                      padding: EdgeInsets.only(left: 20.0, top: 20, bottom: 20, right: 20),
                      child: Row(
                          children: [
                            Icon (
                                Icons.notifications_active
                            ),
                            SizedBox(width: 40.0),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Text(
                                      cardTitle,
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 18.0,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.bold
                                      )
                                  ),
                                  Text(
                                      cardDescription,
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.5,
                                          fontSize: 16.0,
                                          color: Colors.grey
                                      )
                                  )
                                ]
                            )
                          ]
                      ),
                    )
                ),
              ],
            )
        ));
  }
}