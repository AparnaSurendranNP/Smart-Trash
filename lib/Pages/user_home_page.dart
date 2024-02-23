
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:quick_feedback/quick_feedback.dart';
import 'package:waste_management_org/Pages/User_Profile.dart';
import 'package:waste_management_org/Pages/new_page.dart';
import 'package:waste_management_org/Pages/register_as.dart';

class User_home_page extends StatelessWidget {
  User_home_page({Key? key}) : super(key: key);
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text("SMART TRASH"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new_page(),
                    ));
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new_page(),
                    ));
              },
              icon: Icon(Icons.notifications_none_sharp),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new_page(),
                    ));
              },
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text(
                    "Aparna",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("Aparna@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 30.0, color: Colors.green),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => User_Profile(),
                      ));
                },
              ),
              ListTile(
                leading: const Icon(Icons.call),
                title: const Text('Contact as'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text(' Report '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register_as()));
                },
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          focusColor: Colors.white,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => new_page(),
                ));
          },
          child: Text('Status'),
          backgroundColor: Colors.green[900],
          foregroundColor: Colors.white,
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 5.0,
          shape: CircularNotchedRectangle(),
          color: Colors.green[900],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => User_home_page(),
                            ));
                      },
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => new_page(),
                            ));
                      },
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Pick Up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => User_Profile(),
                            ));
                      },
                      icon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Account",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 9.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => new_page(),
                            ));
                      },
                      icon: Icon(
                        Icons.help_outline,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Help",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  Stack(
                    children: <Widget>[
                      SizedBox(
                        child: GoogleMap(
                          onMapCreated: _onMapCreated,
                          initialCameraPosition: CameraPosition(
                            target: _center,
                            zoom: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Divider(),
                  SizedBox(height: 10,),
                  ListTile(
                    onTap: () {},
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.green.withOpacity(0.1)),
                      child: Icon(
                        Icons.payment,
                      ),
                    ),
                    title: Text("Payment History"),
                  ),
                  ListTile(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => feedback(context)
                      ));
                    },
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.green.withOpacity(0.1)),
                      child: Icon(
                        Icons.feedback,
                      ),
                    ),
                    title: Text("Feed Back"),

                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

feedback(context) {
  showDialog(
    context: context,
    builder: (context) {
      return QuickFeedback(
        title: 'Leave a feedback',
        showTextBox: true,
        textBoxHint:
        'Share your feedback',
        submitText: 'SUBMIT',
        onSubmitCallback: (feedback) {
          print('$feedback'); // map { rating: 2, feedback: 'some feedback' }
          Navigator.of(context).pop();
        },
        askLaterText: 'ASK LATER',
        onAskLaterCallback: () {
          print('Do something on ask later click');
        },
      );
    },
  );
}
