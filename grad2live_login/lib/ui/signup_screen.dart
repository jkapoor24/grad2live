import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
//import 'package:dropdownfield/dropdownfield.dart';
//import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class SignupScreen extends StatefulWidget {
  static const String id = "signup_screen";
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
//  final format = DateFormat("yyyy-MM-dd");
  bool checkBoxValue = false;
  String genderSelect = "Select Gender";
  List<String> gender = ["Select Gender", "Male", "Female"];
  String dateSelect = "Date";
  List<String> date = [
    "Date",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31"
  ];
  String monthSelect = "Month";
  List<String> month = [
    "Month",
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  String yearSelect = "Year";
  List<String> year = [
    "Year",
    "2020",
    "2019",
    "2018",
    "2017",
    "2016",
    "2015",
    "2014",
    "2013",
    "2012",
    "2011",
    "2010",
    "2009",
    "2008",
    "2007",
    "2006",
    "2005",
    "2004",
    "2003",
    "2002",
    "2001",
    "2000",
    "1999",
    "1998",
    "1997",
    "1996",
    "1995",
    "1994",
    "1993",
    "1992",
    "1991",
    "1990",
    "1989",
    "1988"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Sign Up"),
            backgroundColor: Colors.grey.shade900,
          ),
          backgroundColor: Colors.white10,
          body: ListView(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter your first name",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "First Name ",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter your last name",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Last Name ",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter your email address",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Email ",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter your phone number",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "Phone Number ",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    padding: EdgeInsets.all(3),
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            style: BorderStyle.solid, color: Colors.white38)),
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(canvasColor: Colors.grey.shade900),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 2.0, bottom: 2.0),
                        child: DropdownButton<String>(
                          hint: Text("Select gender"),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          items: gender.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String newValueSelected) {
                            setState(() {
                              this.genderSelect = newValueSelected;
                            });
                          },
                          value: genderSelect,
                        ),
                      ),
                    ),
                  )
                ],
              ),

//          Column(children: <Widget>[
//            Text('Basic date field (${format.pattern})'),
//            DateTimeField(
//            format: format,
//            onShowPicker: (context, currentValue) {
//              return showDatePicker(
//                  context: context,
//                  firstDate: DateTime(1900),
//                  initialDate: currentValue ?? DateTime.now(),
//                  lastDate: DateTime(2100));
//              },
//            ),
//          ]);

              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    padding: EdgeInsets.all(3),
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            style: BorderStyle.solid, color: Colors.white38)),
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(canvasColor: Colors.grey.shade900),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 2.0, bottom: 2.0),
                        child: Row(
                          children: <Widget>[
                            DropdownButton<String>(
                              hint: Text("Date"),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              items: date.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this.dateSelect = newValueSelected;
                                });
                              },
                              value: dateSelect,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18.0),
                              child: DropdownButton<String>(
                                hint: Text("Month"),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                items: month.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelected) {
                                  setState(() {
                                    this.monthSelect = newValueSelected;
                                  });
                                },
                                value: monthSelect,
                              ),
                            ),
                            DropdownButton<String>(
                              hint: Text("Year"),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              items: year.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this.yearSelect = newValueSelected;
                                });
                              },
                              value: yearSelect,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
//              DropDownField(
//                  labelStyle: TextStyle(color: Colors.white, fontSize: 20),
//                  textStyle: TextStyle(color: Colors.white),
//                  value: genderName,
//                  icon: Icon(Icons.people),
//                  required: false,
//                  hintText: 'Select Gender',
//                  labelText: 'Gender',
//                  items: gender,
//                  setter: (dynamic newValue) {
//                    genderName = newValue;
//                  }),

              Container(
                margin: EdgeInsets.symmetric(vertical: 7.0),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: checkBoxValue,
                      checkColor: Colors.black,
                      activeColor: Colors.deepOrange,
                      onChanged: (bool value) {
                        setState(() {
                          checkBoxValue = value;
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                        "By creating an account, you agree to our terms & conditions and privacy policy",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 80.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.deepOrange,
                ),
                child: FlatButton(
                  onPressed: null,
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 40.0, right: 20.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 36,
                        )),
                  ),
                  Text("Sign Up with"),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 40.0),
                        child: Divider(
                          color: Colors.grey,
                          height: 36,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SignInButton(
                    Buttons.Google,
                    padding: EdgeInsets.all(5.0),
                    text: "Sign up with Google",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SignInButton(
                        Buttons.Facebook,
                        padding: EdgeInsets.all(5.0),
                        mini: true,
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      SignInButton(
                        Buttons.LinkedIn,
                        padding: EdgeInsets.all(5.0),
                        mini: true,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
