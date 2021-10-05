import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class VerifyLogin extends StatefulWidget {
  const VerifyLogin({ Key? key }) : super(key: key);

  @override
  _VerifyLoginState createState() => _VerifyLoginState();
}


  Color textfieldcolor = Colors.black; 

class _VerifyLoginState extends State<VerifyLogin> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:  AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text("Verification",
      ),
      
    ),
      body: SingleChildScrollView(
        child: Container(
          
          color: Colors.amber,
          height: size.height,
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                ),
              ),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SizedBox(
                                  height: size.height / 3,
                                  width: size.width,
                                  child: Image.asset("images/verifyphone.png")),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 30, 16, 20),
                      
                                    child: Text(
                                      "You will get a OTP via SMS.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: textfieldcolor
                                          ),
                                          
                                    ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: TextFormField(
                                
                                // controller:
                                //     TextEditingController(text: user.userEmail),
                                // onChanged: (value) {
                                //   user.userEmail = value;
                                // },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter Email';
                                  } else if (RegExp(
                                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(value)) {
                                    return null;
                                  } else {
                                    return 'Please enter valid email!';
                                  }
                                },
                                
                                style: TextStyle(color: Colors.black),

                                decoration: InputDecoration(
                                  
                                  fillColor: Colors.amber.shade50,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.amber,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                              child: Container(
                                height: 60,
                                width: 400,
                                child: FlatButton(
                                    color: Colors.amber,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        print("yes");
                                      } else {
                                        print("no");
                                      }
                                    },
                                    child: Text(
                                      "Verify",
                                      style: GoogleFonts.workSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          color: Colors.white),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 270),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     new MaterialPageRoute(
                                      //         builder: (context) => Signup()));
                                    },
                                    child: Text(
                                      "Resend again ?",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Colors.amber.shade600),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}