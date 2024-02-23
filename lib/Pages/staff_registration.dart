import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:waste_management_org/Pages/Staff_home_page.dart';
import 'package:waste_management_org/Pages/login.dart';
class staff extends StatelessWidget {
  const staff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text("Staff Registration",),
        ),

        body: Center(
          child: Column(
            children: [
              IconButton(onPressed:()async{
                var picker=ImagePicker();
                var pickedFile=await picker.pickImage(source:ImageSource.camera);
              },icon: const Icon(Icons.add_a_photo_outlined),iconSize: 30,
              ),
              Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child: TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Staff Id is Empty!!";
                    }
                    else if(value.length<8){
                      return "Staff Id too short!!";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    // ignore: prefer_const_constructors
                      prefixIcon:  Icon(Icons.account_circle_outlined,size: 20),
                      labelText: "Enter Staff Id",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),

                child: TextFormField(
                  decoration:InputDecoration(
                      prefixIcon:const Icon(Icons.account_circle_outlined,size: 20),
                      labelText: 'First Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),

                child: TextFormField(
                  decoration:InputDecoration(
                      prefixIcon:const Icon(Icons.account_circle_outlined,size: 20),
                      labelText: 'Last Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),
              Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child: TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Aadhar no is Empty!!";
                    }
                    else if(value.length<8){
                      return "Aadhar no too short!!";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    // ignore: prefer_const_constructors
                      prefixIcon: Icon(Icons.account_circle_outlined,size: 20),
                      labelText: "Enter Aadhar no",
                      hintText: 'Aadhar no',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),
              Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child: TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Address is Empty!!";
                    }
                    else if(value.length<30){
                      return "Address too short!!";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_city,size: 20),
                      labelText: "Enter Address",
                      hintText: 'Address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child: TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Phone no is Empty!!";
                    }
                    else if(value.length<10){
                      return "Phone no too short!!";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.call,size: 20),
                      labelText: "Phone no",
                      hintText: 'Phone no',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  Staff_home_page()
                      ));

                    },style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        )), child: Text("Submit")
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => login()
                      ));
                    },style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        )),
                        child: Text("back")
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
