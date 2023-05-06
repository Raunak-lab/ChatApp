import 'package:chatapp_firebase/pages/home_page.dart';
import 'package:chatapp_firebase/services/auth_services.dart';
import 'package:flutter/material.dart';

import '../helper/helper_function.dart';
import '../widgets/widgets.dart';
import 'auth/login_page.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  AuthService authService = AuthService();
  String userName = "";

  String email = "";

  @override
  void initState(){
    super.initState();
    gettingUserData();
  }

  gettingUserData() async{
    await HelperFunctions.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunctions.getUserNameFromSF().then((val) {
      setState(() {
        userName = val!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Theme.of(context).primaryColor,
       elevation: 0,
       title: const Text("Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 27),),

     ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50),
          children: <Widget>[
            Icon(Icons.account_circle,size:150,color: Colors.grey[700],),

            const SizedBox(
              height: 15,
            ),
            Text(userName,textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.bold),),

            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              onTap: (){
                nextScreenReplace(context, HomePage());
              },
              selectedColor: Theme.of(context).primaryColor,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              leading: const Icon(Icons.group),
              title: const Text("Groups",
                style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              onTap: () async{},
              selectedColor: Theme.of(context).primaryColor,
              selected: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              leading: const Icon(Icons.person),
              title: const Text("Profile",
                style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              onTap: ()async{
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context){
                      return  AlertDialog(
                        title: const Text("Logout"),
                        content: const Text("Are you sure you want to logout?"),
                        actions: [
                          IconButton(onPressed:(){Navigator.pop(context);},
                            icon: const Icon(Icons.cancel,color: Colors.red,),
                          ),
                          IconButton(onPressed:() async{
                            await authService.signOut();
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> const LoginPage()),
                                    (route) => false);
                          },
                            icon: const Icon(Icons.done,color: Colors.green,),
                          )
                        ],
                      );
                    });
              },
              selectedColor: Theme.of(context).primaryColor,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Logout",
                style: TextStyle(color: Colors.black),),
            )
          ],

        ),
      ),
        body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.account_circle, size: 200,color: Colors.grey[700],),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Full Name", style: TextStyle(fontSize: 27),),
                Text(widget.userName, style: ,)
              ],
            )
          ],
        ),
    ),

    );
  }
}
