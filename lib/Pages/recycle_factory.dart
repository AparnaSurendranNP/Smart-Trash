
import 'package:flutter/material.dart';
import 'package:waste_management_org/Pages/login.dart';
import 'package:waste_management_org/Pages/new_page.dart';
class Recycle_factory extends StatelessWidget {
  const Recycle_factory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Recycle Factory Registration",),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Factory Id is Empty!!";
                    }
                    else if(value.length<8){
                      return "Factory Id too short!!";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    // ignore: prefer_const_constructors
                      prefixIcon:  Icon(Icons.factory_outlined,size: 20),
                      labelText: "Enter Factory Id",
                      hintText: 'Factory Id',
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
                      prefixIcon:const Icon(Icons.factory_outlined,size: 20),
                      labelText: 'Factory Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),
              Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
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
                      prefixIcon: Icon(Icons.home_outlined,size: 20),
                      labelText: "Enter Address",
                      hintText: 'Address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
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
                          builder: (context) => const new_page()
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
                        )), child: Text("back")
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

