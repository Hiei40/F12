import 'package:flutter/material.dart';
import 'package:untitled/widget/CustomTextFormField.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override

  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  bool Visable=true;
  final formKey = GlobalKey<FormState>();
   Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      body: Form(
 key: formKey,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "E-mail",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
              ],
            ),
            Customtextformfield(
              Controller: Email,
              Label: 'E-mail',
              icon: Icons.email,
              keyboard: TextInputType.phone,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (String ?value){
                  if(value!.isEmpty){
                    return "Empty";


                  }
                  if(value.length<8){
                    return "More Than 8 charcter";


                  }
else
  return null;
                },
                controller: Password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                      onTap: (){
        setState(() {
          Visable=!Visable;
        });
        
                      },
        
                      child: Icon(Visable==true?Icons.visibility_off:Icons.visibility)),
                ),
                obscureText: Visable,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: (){
                formKey.currentState!.validate();



              },
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 50,
              child:  Text("Login"),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.blue,
              
                     ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
