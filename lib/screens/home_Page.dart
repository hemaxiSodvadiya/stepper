import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentsteps = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xfff64538),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff64538),
          title: const Text(
            "Stepper App",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: Stepper(
          steps: movieStep,
          currentStep: currentsteps,
          type: StepperType.vertical,
          onStepCancel: () {
            setState(() {
              currentsteps = 0;
              if (currentsteps != 0) {
                setState(() {
                  currentsteps--;
                });
              }
            });
          },
          onStepContinue: () {
            setState(() {
              if (currentsteps != 2) {
                setState(() {
                  currentsteps++;
                  // currentsteps+1;
                });
              }
            });
          },
          onStepTapped: (step) {
            currentsteps = step;
          },
        ),
      ),
    );
  }

  List<Step> movieStep = <Step>[
    Step(
        title: Text("SignUp"),
        content: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.person_outline), labelText: "Name"),
            ),
            TextFormField(
              decoration:
                  InputDecoration(icon: Icon(Icons.email), labelText: "Email"),
            ),
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.lock), labelText: "Password"),
            ),
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.lock_sharp), labelText: "Confirm Password"),
            ),
          ],
        ),
        isActive: true),
    Step(
        title: Text("Login"),
        content: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.person_outline), labelText: "User Name*"),
            ),
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.lock), labelText: "Password*"),
            ),
          ],
        ),
        isActive: true),
    const Step(title: Text("Home"), content: Text("Home"), isActive: true),
  ];
}
