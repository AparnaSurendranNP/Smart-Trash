import 'package:flutter/material.dart';
import 'package:waste_management_org/Pages/login.dart';
import 'package:waste_management_org/Pages/recycle_factory.dart';
import 'package:waste_management_org/Pages/staff_registration.dart';
import 'package:waste_management_org/Pages/user_registration.dart';

class Register_as extends StatelessWidget {
  const Register_as({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(' Who   are   you ?? ', style: TextStyle(fontFamily: 'Rubik_Puddles',color: Colors.green,
                                fontSize: 50,fontWeight: FontWeight.bold,

                              ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => User_registration()
                    ));
                  },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      child: Text("User")
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => staff()
                    ));
                  },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      child: Text("Staff")
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Recycle_factory()
                    ));
                  },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      child: Text("Recycle Factory")
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
          ),
        )
    );
  }
}
