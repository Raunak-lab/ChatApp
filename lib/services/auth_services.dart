import 'package:chatapp_firebase/services/database_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //Login



   //Register
   Future registerUserWithEmailandpassword(String fullName, String email, String password) async{
     try{

       User user = (await firebaseAuth.createUserWithEmailAndPassword(
           email: email, password: password))
       .user!;



       if(user!=null){


         await DatabaseService(uid: user.uid).updateUserData(fullName, email);
         //call our database service to register
         return true;
       }
     } on FirebaseAuthException catch(e){
       print(e);
       return e.message;
     }
   }


   //Signout

}