import 'package:flutter/material.dart';

class RegisterPage  extends StatefulWidget {
  @override
  _RegisterPageState createState() =>new  _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<Step> steps = [
    Step(
      title: const Text(
        'Enter Name',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),
      isActive: true,
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
      isActive: false,
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
      isActive: false,
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
      isActive:false,
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
      isActive: false,
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
   int currentStep = 0;
    bool complete= false;

    next() {
      currentStep + 1 != steps.length
      ? goTo(currentStep + 1)
      : setState(() => complete = true);

    }
    cancel() {
      if(currentStep > 0) {
        goTo(currentStep - 1);
      }
    }

    goTo( int step) {
      setState(() => complete = true);
    }
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stepper(
              steps: steps,
              currentStep: currentStep,
              onStepContinue: next,
              onStepCancel: cancel,
              onStepTapped: (step) => goTo(step)
            ),
            ),
        ],
      ),
      
    );
  }
}
