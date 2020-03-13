import 'package:flutter/material.dart';

class RegisterPage  extends StatefulWidget {
  @override
  _RegisterPageState createState() =>new  _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<Step> _mySteps(){ 
   List<Step> _steps = [
    Step(
      title: const Text(
        'Enter Name',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),
      isActive: _currentStep >=0,
      state: StepState.complete,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Full Name',
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey
              )
              ),

          )
        ],
      )
    ),
    Step(
      title: const Text(
        ' Enter Class',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),
      isActive: _currentStep >=1,
      state: StepState.complete,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter Class',
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey
              )
              ),

          )
        ],
      )
    ),
    Step(
      title: const Text(
        'Enter RollNo',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),
      isActive: _currentStep >=2,
      state: StepState.complete,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'RollNo',
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey
              )
              ),

          )
        ],
      )
    ),
    Step(
      title: const Text(
        'Enter Email ID',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),
      isActive: _currentStep >=3,
      state: StepState.complete,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Email ID',
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey
              )
              ),

          )
        ],
      )
    ),
    Step(
      title: const Text(
        'Enter Password',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),
      isActive: _currentStep >=4,
      state: StepState.complete,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey
              )
              ),

          )
        ],
      )
    )
    

  ];
  return _steps;
  }
   int _currentStep = 0;
   
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[400],
        title: Text(
          'Create an account',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          ),
        
      ),
      body:Theme(
        data: ThemeData(
         accentColor: Colors.green
        ),
       child: Stepper(
        steps: _mySteps(),
        currentStep: this._currentStep,
        onStepTapped: (step){
          setState(() {
            this._currentStep = step;

          });
        },
        onStepContinue: (){
          setState(() {
             if(this._currentStep < this._mySteps().length - 1){
              this._currentStep = this._currentStep + 1;
            }else{
              //Logic to check if everything is completed
              print('Completed, check fields.');
            }
          });
        },
         onStepCancel: () {
          setState(() {
            if(this._currentStep > 0){
              this._currentStep = this._currentStep - 1;
            }else{
              this._currentStep = 0;
            }
          });
        },
        ),
      ),
       floatingActionButton: FloatingActionButton(
         onPressed: () {

         },
         child: Icon(Icons.check, color: Colors.black),
         backgroundColor: Colors.tealAccent[400],
         ),
    );
  }
}
