
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:alan_voice/alan_voice.dart';
import 'SignUpScreen.dart';
class LoginScreen extends StatefulWidget{


@override
_LoginScreenState createState() => _LoginScreenState();

}


class _LoginScreenState extends State<LoginScreen>{

  _LoginScreenState() {
    /// Init Alan Button with project key from Alan Studio
    AlanVoice.addButton("17c0479308da8681dee5137b6249751d2e956eca572e1d8b807a3e2338fdd0dc/stage");
    /// Handle commands from Alan Studio
    AlanVoice.onCommand.add((command) {
    debugPrint("got new command ${command.toString()}");
    });
  }
bool isRememberME =false;
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
final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.black87,
  minimumSize: Size(88, 36),
  padding:EdgeInsets.only(right: 0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);
Widget buildFargotPassBtn(){
  return Container(
    alignment: Alignment.centerRight,
    child:TextButton(
      style: flatButtonStyle,
      onPressed: () =>print("Forget password pressed"),

      child: Text('ForgetPassword?'
        ,style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold

        ),

      ),

    ),

  );


}
Widget buildRememberCb(){
  return Container(
    height: 20,
    child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(
                unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberME,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value){
                setState(() { isRememberME = value!; });

              },
            ),
          ),
     Text(
       'Remember me',
       style: TextStyle(
color: Colors.white,
         fontWeight: FontWeight.bold

       ),

),

        ]

    ),

  );

}

Widget buildLoginbtn(){

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
      onPressed: () => print("Login pressed"),

      child:  Text('Login',style: TextStyle(
        color:Color(0xff3d54c8),
        fontSize: 18,
        fontWeight: FontWeight.bold

      ),),
    ),

  );
}
Widget buildSignupbtn(){

  return GestureDetector(

    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  SignUpScreen()),
      );
    },

    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have Accuent?',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18,

            )

          ),
          TextSpan(
            text: 'Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )

          ),
        ]

      ),

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
            "Sign in",style:TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold


        )

        ),
        SizedBox(height: 50),
        buildEmail(),
        SizedBox(height: 20),
        buildPassword(),
        buildFargotPassBtn(),
        buildRememberCb(),
        buildLoginbtn(),
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