import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:waste_management_org/Pages/login.dart';
import 'package:waste_management_org/Pages/user_home_page.dart';

class User_registration extends StatelessWidget {
  User_registration({Key? key}) : super(key: key);
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("SIGN UP",),
        ),
        body:
        Center(
          child: Column(
            children:  [
              IconButton(onPressed:()async{
                var picker=ImagePicker();
                var pickedFile=await picker.pickImage(source:ImageSource.camera);
              },icon: const Icon(Icons.add_a_photo_outlined),iconSize: 30,
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),

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
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),

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
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),

                child: TextFormField(
                  validator: (value){
                    if(value!.isEmpty){

                      return "Email cannot be empty";
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration:InputDecoration(
                      prefixIcon:const Icon(Icons.call,size: 20),
                      labelText: 'Enter your Email',

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),

                child: TextFormField(
                  decoration:InputDecoration(
                      prefixIcon:const Icon(Icons.home_outlined,size: 20),
                      labelText: 'Address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),

                child: TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Phone no";
                    }
                    else if(value.length<10){
                      return "Phone no is too short";
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration:InputDecoration(
                      prefixIcon:const Icon(Icons.call,size: 20),
                      labelText: 'Enter your number',
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
                          builder: (context) =>  User_home_page()
                      ));
                      var isOk=formKey.currentState?.validate();
                    },style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        )), child: const Text("Submit")
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  login()
                      ));
                      var isOk=formKey.currentState?.validate();
                    },style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        )), child: const Text("back")
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
