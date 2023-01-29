import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:alan_voice/alan_voice.dart';
import 'LoginScreen.dart';

class SignUpScreen extends StatefulWidget{


  @override
  _SignUpScreenState createState() => _SignUpScreenState();

}

class _SignUpScreenState extends State<SignUpScreen> {
  Widget buildEmail(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold


          ),

        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )

              ]

          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(

                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefix: Icon(
                    Icons.email,
                    color: Color(0xff3d54c8)


                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Colors.black38

                )
            ),
          ),
        )

      ],

    );

  }
  Widget buildID(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ID',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold


          ),

        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )

              ]

          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(

                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefix: Icon(
                    Icons.gpp_maybe_outlined,
                    color: Color(0xff3d54c8)


                ),
                hintText: 'ID',
                hintStyle: TextStyle(
                    color: Colors.black38

                )
            ),
          ),
        )

      ],

    );

  }
  Widget buildPhone(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phone',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold


          ),

        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )

              ]

          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(

                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefix: Icon(
                    Icons.phone,
                    color: Color(0xff3d54c8)


                ),
                hintText: 'Phone',
                hintStyle: TextStyle(
                    color: Colors.black38

                )
            ),
          ),
        )

      ],

    );

  }
  Widget buildFullname(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fullname',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold


          ),

        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )

              ]

          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(

                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefix: Icon(
                    Icons.note_alt_rounded,
                    color: Color(0xff3d54c8)


                ),
                hintText: 'Fullname',
                hintStyle: TextStyle(
                    color: Colors.black38

                )
            ),
          ),
        )

      ],

    );

  }
  Widget buildusername(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'username',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold


          ),

        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )

              ]

          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(

                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefix: Icon(
                    Icons.email,
                    color: Color(0xff3d54c8)


                ),
                hintText: 'username',
                hintStyle: TextStyle(
                    color: Colors.black38

                )
            ),
          ),
        )

      ],

    );

  }
  Widget buildPassword(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold


          ),

        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )

              ]

          ),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(

                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefix: Icon(
                    Icons.lock,
                    color: Color(0xff3d54c8)


                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.black38

                )
            ),
          ),
        )

      ],

    );

  }
  Widget buildSignupbtn(){

    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding:EdgeInsets.all(15),


          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),


        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  LoginScreen()),
          );
        },

        child:  Text('SignUp',style: TextStyle(
            color:Color(0xff3d54c8),
            fontSize: 18,
            fontWeight: FontWeight.bold

        ),),
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
              child: Stack(
                  children: <Widget>[
                    Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end:Alignment.bottomCenter,
                                colors: [
                                  Color(0x663d54c8),
                                  Color(0x993d54c8),
                                  Color(0xcc3d54c8),
                                  Color(0xff3d54c8),


                                ]



                            )


                        ),
                        child:SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 120

                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                    "Sign Up",style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold


                                )

                                ),
                                buildEmail(),
                                SizedBox(height: 20),
                                buildID(),
                                SizedBox(height: 20),
                                buildPhone(),
                                SizedBox(height: 20),
                                buildFullname(),
                                SizedBox(height: 20),
                                buildPassword(),
                                SizedBox(height: 20),
                                buildSignupbtn(),
                              ]

                          ),
                        )
                    )

                  ]


              )
          )
      ),

    );
  }





}


