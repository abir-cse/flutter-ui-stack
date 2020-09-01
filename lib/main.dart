import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
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
      body: Container(
        color: Colors.white,
        width: screenWidth,
        //height: screenWidth,
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container (
              width: screenWidth,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle
              ),
            ),
            Container (
              height: 280,
              margin: EdgeInsets.only(right: 100),
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle
              ),
            ),
            Container (
              height: 280,
              margin: EdgeInsets.only(left: 100),
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle
              ),
            ),
            Container (
              height: 540,
              margin: EdgeInsets.only(left: 130, right: 130),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 80, 91, 1.0),
                  shape: BoxShape.circle
              ),
            ),
            Container (
              height: 540,
              margin: EdgeInsets.only(left: 145, right: 145),
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle
              ),
            ),
            Container(
              //height: 800,
              margin: EdgeInsets.only(top: 260),
              child:                     Text(
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
              //height: 800,
              margin: EdgeInsets.only(top: 325),
              child: Icon (
                Icons.info_outline,
                color: Color.fromRGBO(232, 80, 91, 1.0),
              ),
            ),
            Container(
              height: 150,
              padding: EdgeInsets.only(top: 50, left: 50.0, right: 20.0),
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


            Padding (
                padding: EdgeInsets.only(top: 350),
                child: Container(
                  height: MediaQuery.of(context).size.height - 185.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
                  ),
                  child: ListView(
                    primary: false,
                    padding: EdgeInsets.only(left: 5.0, right: 0.0),
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Container(
                              height: MediaQuery.of(context).size.height - 300.0,
                              child: ListView(children: [
                                _buildCardItem('Loram ipsum dollar', 'Loram ipsum dollar'),
                                _buildCardItem( 'Loram ipsum dollar', 'Loram ipsum dollar'),
                                _buildCardItem('Loram ipsum dollar', 'Loram ipsum dollar'),
                              ]))),
                    ],
                  ),
                )
            )

          ],
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