import 'package:flutter/material.dart';

class Login extends StatelessWidget {


  _formFields(){
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left:35.0,right: 35.0),
          child: Material(
            elevation: 8,
            borderRadius: BorderRadius.circular(40),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left:12.0,right: 25.0),
                  child: Icon(Icons.person_outline,color: Colors.grey[400],),
                ),
                hintText: "Enter Username",
                hintStyle: TextStyle(color:Colors.grey[400]),
                contentPadding: EdgeInsets.only(left: 30,top:14)
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left:35.0,right: 35.0),
          child: Material(
            elevation: 8,
            borderRadius: BorderRadius.circular(40),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 25.0),
                    child: Icon(Icons.lock_outline,color: Colors.grey[400],),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Icon(Icons.help_outline,color: Colors.grey[400],),
                  ),
                  hintText: "Enter Password",
                  hintStyle: TextStyle(color:Colors.grey[400]),
                  contentPadding: EdgeInsets.only(left: 30,top:14)
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.overlay),
              image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20, top: 30),
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.menu,
                size: 30,
                color: Colors.pink[200],
              ),
            ),
            SizedBox(height: 50,),
            Row(
              children: <Widget>[
                Container(
                  width: 35,
                ),
                Text(
                  "Sign In",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: Colors.grey[400]),
                )
              ],
            ),
            SizedBox(height: 50,),
            _formFields(),
            SizedBox(height: 50,),
            RaisedButton(
              padding: EdgeInsets.only(left: 100,right: 100, top: 13,bottom: 13),
              shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              elevation: 7,
                color: Colors.pink[500],
                onPressed: (){},
                child:Text("Login",style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
