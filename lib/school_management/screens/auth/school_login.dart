
import 'package:flutter/material.dart';
import 'package:frontend/school_management/app_color/app_color.dart';

class SchoolLogin extends StatelessWidget {
   SchoolLogin({super.key});

  final _formKey= GlobalKey<FormState>();
  final TextEditingController _emailC= TextEditingController();

  final TextEditingController _passC= TextEditingController();

  final bool _obscure = true;

   String? email, pass;
  @override
  Widget build(BuildContext context) {
    return Container(
     // padding: EdgeInsets.only(top: 30, left: 30, right: 30),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/school/login.png',)
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .center,
                children: [
                  TextFormField(
                    controller: _emailC,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(color: AppColors.textWhite),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: AppColors.blueGrey,
                        filled: true,
                        prefixIcon: Icon(Icons.email,color: AppColors.textWhite,)
                    ),
                    onChanged: (value){
                      email = value;
                    },
                    validator: (value){
                      if(value!.isEmpty){
                       return 'Please Enter Your Email';
                      }
                      else if(!value.contains('@')){
                        return 'Please Enter A Valid Email';
                      }else{
                        return '';
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _passC,
                    obscureText: _obscure,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: AppColors.textWhite),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: AppColors.blueGrey,
                      filled: true,
                      prefixIcon: Icon(Icons.lock,color: AppColors.textWhite,),
                      suffixIcon: Icon(Icons.visibility,color: AppColors.textWhite,)
                    ),
                    onChanged: (value){
                      pass = value;
                    },
                    validator: (value){
                      if(value!.length< 6){
                       return 'Password Length Should Be 6';
                      }
                      else{
                        return null;
                      }
                    },
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
