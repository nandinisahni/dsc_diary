import 'package:diary_login/registerpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(new DiaryLogin());

class DiaryLogin extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
    
  }
}
  class  MyHomePage extends StatefulWidget {
    @override
    _MyHomePageState createState() => _MyHomePageState();
  }
  
  class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0,110.0, 0.0, 0.0),
                    child: Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 80.0, fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                 Container(
                    padding: EdgeInsets.fromLTRB(15.0,180.0, 0.0, 0.0),
                    child: Text(
                      'There',
                      style: TextStyle(
                        fontSize: 80.0, fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                   Container(
                    padding: EdgeInsets.fromLTRB(225.0,180.0, 0.0, 0.0),
                    child: Text(
                      '.',
                      style: TextStyle(
                        fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.tealAccent[700]
                      ),
                    ),
                  )
                ],
              )
            ),
            Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20),
             child: Column(
               children: <Widget>[
                 TextField(
                   decoration: InputDecoration(
                     labelText: 'Email',
                     labelStyle: TextStyle(
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.bold,
                       color: Colors.blueGrey
                     ),
                     focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.blueAccent)
                     )
                   ),
                 ),
                 SizedBox(height: 20.0),
                 TextField(
                   decoration: InputDecoration(
                     labelText: 'Password',
                     labelStyle: TextStyle(
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.bold,
                       color: Colors.blueGrey
                     ),
                     focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.blueAccent)
                     )
                   ),
                   obscureText: true,
                 ),
                 
                  SizedBox(height: 20.0),
                   Container(
                     height: 40.0,
                     child: Material(
                       borderRadius: BorderRadius.circular(20.0),
                       shadowColor: Colors.teal,
                       color: Colors.tealAccent,
                       elevation: 7.0,
                       child: GestureDetector(
                         onTap: () {},
                         child: Center(
                           child: Text(
                             'LOGIN',
                             style: TextStyle(
                             color: Colors.black,
                             fontFamily: 'Montserrat',
                             fontWeight: FontWeight.bold 
                             ),
                           )
                         ),
                       ),
                     ),
                   )

               ]
             ),
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('New to app?',
                style: TextStyle(
                  fontFamily: 'Motserrat',
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>RegisterPage()
              
                    ));

      
                  },
                  child: Text('Register',
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: Colors.teal
                  ),
                  ),
                )
              ],
            )


            
          ],
        ),
        
      );
    }
  }
  