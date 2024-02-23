
import 'package:flutter/material.dart';
class User_Profile extends StatelessWidget {
  const User_Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.green[900],
        leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
            icon: Icon(Icons.chevron_left_rounded)),
        title: Text("Profile"),
      ),

          body: SingleChildScrollView(
          child: Center(
          child: Container(
          padding: EdgeInsets.all(40),
            child: Column(
            children: [
                ListTile(
                onTap: () {},
                  leading: Container(
                  width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                        color: Colors.green.withOpacity(0.1)
                    ),
                    child: Icon(Icons.account_circle,
                    ),
                  ),
                  title: Text("Name"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.green.withOpacity(0.1)
                    ),
                    child: Icon(Icons.home_outlined,
                    ),
                  ),
                  title: Text("Address"),
                ),
                ListTile(
                onTap: () {},
                  leading: Container(
                  width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                        color: Colors.green.withOpacity(0.1)
                    ),
                    child: Icon(Icons.phone,
                    ),
                  ),
                  title: Text("Contact"),
                ),
                ListTile(
                onTap: () {},
                  leading: Container(
                  width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                        color: Colors.green.withOpacity(0.1)
                    ),
                    child: Icon(Icons.alternate_email,
                    ),
                  ),
                  title: Text("Gmail"),
                ),
              Divider(),
              SizedBox(
                width: 200,
                child: ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // backgroundColor:Colors.red[900],
                        side: BorderSide.none,
                        shape: StadiumBorder()
                    ),
                    child: Text("Edit Profile")
                ),
              ),
              ],
              ),
            ),
          ),
          )
      ),
    );
  }
}
