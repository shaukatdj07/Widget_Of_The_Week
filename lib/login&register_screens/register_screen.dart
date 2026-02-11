import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});

  final _emailC = TextEditingController();
  final _passC = TextEditingController();
  final _nameC = TextEditingController();

  final bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/register.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 40, top: 50),
              child: Text(
                'Create\nAccount',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: height * 0.3,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _nameC,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.white
                          ),
                        ),
                        focusColor: Colors.white,
                        fillColor: Colors.grey.shade100,
                        //filled: true,
                        hintText: 'Name',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: height * .02),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailC,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.white
                          ),
                        ),
                        focusColor: Colors.deepPurple,
                        fillColor: Colors.grey.shade100,
                        //filled: true,
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: height * .02),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailC,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.white
                          ),
                        ),
                        focusColor: Colors.deepPurple,
                        fillColor: Colors.grey.shade100,
                        //filled: true,
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: height *.02),
                    Container(
                      height: height * .05,
                      width: width * .9,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Sing Up',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * .02),
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff4c505b),
                          ),
                        ),
                        SizedBox(width: 5),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
