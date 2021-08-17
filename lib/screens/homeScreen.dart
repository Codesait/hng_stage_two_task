import 'package:flutter/material.dart';
import 'package:stage_two_hng_task/screens/profile.dart';
import 'package:stage_two_hng_task/widgets/button.dart';
import 'package:stage_two_hng_task/widgets/input_form.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = 'Uzoma Wisdom Cheiemela';
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 late String userName;
 late String age;
 late String stack;
 late String bio;


  @override
  void initState() {
    _printName();
    super.initState();
  }

  void _printName() {
    print('My name is $name');
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(

        // form
        child: Form(
          key: _formKey,
          child: Container(
            height: size.height,
            width: size.width,
            padding: const EdgeInsets.all(20.0),
            child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // logo
                    Image.asset(
                      'assets/images/hng_logo.png',
                      height: 200,
                      width: size.width/1.8,
                    ),

                    const Text(
                      'Please tell us a little bit about YourSelf.',
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 15.0,),


                    nameInputForm(),
                    const SizedBox(height: 7.0,),

                    ageInputForm(),
                    const SizedBox(height: 7.0,),

                    stackInputForm(),
                    const SizedBox(height: 7.0,),

                    bioInputForm(),
                    const SizedBox(height: 15.0,),


                   new CustomButton(
                      fixedSize: Size(size.width,50.0),
                      child: Text('Submit'),
                      onClicked: (){
                        if (validateForm()){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Profile(
                                userName: userName,
                                age: age,
                                stack: stack,
                                bio: bio,

                              ))
                          );
                        }
                      }
                    )

                  ],
                ),
              ),
            ),
        ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  // checking form validations
  bool validateForm(){
    final form = _formKey.currentState;
    bool validated = false;
    if (form!.validate() == true) {
     form.save();
      validated = true;
    }
    return validated;
  }

  Widget nameInputForm(){
    return InputForm(
      onSaved: (val){
        userName = val;
      },
      inputType: TextInputType.name,
      label: 'Name',
      hintText: 'e.g Chiemela Uzoma',
    );
  }

  Widget ageInputForm(){
    return InputForm(
      onSaved: (val){
        age = val.toString();
        },
      inputType: TextInputType.number,
      label: 'Age',
      hintText: 'e.g 12',
    );
  }

  Widget stackInputForm(){
    return InputForm(
      onSaved: (val){
        stack = val;
      },
      inputType: TextInputType.number,
      label: 'Dev Stack',
      hintText: 'Mobile Development',
    );
  }

  Widget bioInputForm(){
    return InputForm(
      onSaved: (val){
        bio = val;
      },
      inputType: TextInputType.number,
      label: 'Bio',
      hintText: 'e.g I am a detail oriented mobile developer.',
      maxLines: 7,
    );
  }

}
