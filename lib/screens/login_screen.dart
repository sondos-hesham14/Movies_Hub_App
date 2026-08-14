import 'package:flutter/material.dart';
import 'signup_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen>{
  bool isPasswordVisible = false;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121011),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 65,),
            Text("Sign in",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white,),),
             SizedBox(height: 20,),
            TextField(
                  style:TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  hintText: 'E-mail',
                  hintStyle:TextStyle(
                    color: Color(0xFF939392),
                    fontSize: 12,
                  ),
                  enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                   borderSide:  BorderSide(
                   color: Color(0xFF2D2B2D),),
                  ),
                  filled: true,
                  fillColor:  Color(0xFF121011),
                  contentPadding:  EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 14,
                  ),
                ),
            ),
            SizedBox(height: 8,),
            TextField(
                   obscureText: !isPasswordVisible,
                  style: const TextStyle(
                 color: Colors.white,
                 fontSize: 15,
                 ),
             decoration: InputDecoration(
                 hintText: 'Password',
                 hintStyle: const TextStyle(
                 color: Color(0xFF939392),
                 fontSize: 12,
              ),
             enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(15),
                 borderSide: const BorderSide(
                 color: Color(0xFF2D2B2D),
                 ),
              ),
              filled: true,
              fillColor: const Color(0xFF121011),
              contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 14,
              ),
            suffixIcon: IconButton(
               onPressed: () {
               setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
               icon: Icon(
               isPasswordVisible ? Icons.visibility: Icons.visibility_off,
               color: const Color(0xFF939392),
              ),
            ),
          ),
        ),
            
            SizedBox(height: 59,),
             SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color(0xFFF52B3B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Color(0xFF2D2B2D),
                      height: 1,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('or',style: TextStyle(fontSize: 15,color: Color(0xFF939392),),),
                  SizedBox(width: 10,),
                   Expanded(
                     child: Container(
                      color: Color(0xFF2D2B2D),
                      height: 1,
                     ),
                   ),
                ],
              ),
              Spacer(),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t you have an account?",style: TextStyle(fontSize: 15,color: Color(0xFF939392),),),
                   GestureDetector(
                   onTap: () {Navigator.push( context,
                   MaterialPageRoute(
                   builder: (context) => const SignupScreen(), ), );},
                   child: const Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 12,),), ),
                ],
              )
          ],
        ),
      ),
    );
  }
}