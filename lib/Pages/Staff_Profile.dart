import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Staff_Profile extends StatelessWidget {
  const Staff_Profile({Key? key}) : super(key: key);

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
                  Stack(
                    children: [
                      ClipOval(
                        child: Image.asset('assets/img.jpg',
                          fit: BoxFit.fill,
                          height: 120,
                          width: 120,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(

                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.green[900]
                          ),
                          child: IconButton(onPressed: () async{
                            var picker=ImagePicker();
                            var pickedFile=await picker.pickImage(source:ImageSource.camera);

                          }, icon: Icon(Icons.camera_alt, color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                  Text("Name", style: TextStyle(fontWeight: FontWeight.normal)),

                  SizedBox(height: 10,),
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
                      child: Icon(Icons.date_range,
                      ),
                    ),
                    title: Text("Date of birth"),
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
                      child: Icon(Icons.person_outlined,
                      ),
                    ),
                    title: Text("Gender"),
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
                    title: Text("Phone"),
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
                      child: Icon(Icons.file_copy_outlined,
                      ),
                    ),
                    title: Text("Certificate"),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
