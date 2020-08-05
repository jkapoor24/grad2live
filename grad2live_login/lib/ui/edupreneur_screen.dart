import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad2live_login/ui/experience_screen.dart';

class EdupreneurScreen extends StatefulWidget {
  static const String id = "edupreneur_screen";
  @override
  _EdupreneurScreenState createState() => _EdupreneurScreenState();
}

class _EdupreneurScreenState extends State<EdupreneurScreen> {
  bool checkBoxValue = false;
  String genderSelect = "Select Gender";
  List<String> gender = ["Select Gender", "Male", "Female"];
  String languageSelect = "Select Language";
  List<String> language = ["Select Language", "English", "Hindi"];
  String penTablet = "Pen and Tablet";
  List<String> ptSelect = ["Pen and Tablet", "Yes", "No"];
  String documentSelect = "Verification Document";
  List<String> verificationDocument = [
    "Verification Document",
    "Passport",
    "Voter ID"
  ];
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
          title: Text("Become an Edupreneur"),
          backgroundColor: Colors.grey.shade900,
        ),
        backgroundColor: Colors.white10,
        body: ListView(
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          children: <Widget>[
            Text(
              "Basic Information",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
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
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 57,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white38,
                      )),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              debugPrint("");
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Browse",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            " Attach Profile Image",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.attach_file,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              debugPrint("");
                            },
                          )
                        ],
                      )
                    ],
                  ),
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
                        hint: Text("Select Language"),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        items: language.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (String newValueSelected) {
                          setState(() {
                            this.languageSelect = newValueSelected;
                          });
                        },
                        value: languageSelect,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                keyboardType: TextInputType.url,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Enter LinkedIn profile URL",
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: "LinkedIn Profile ",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 57,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white38,
                      )),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              debugPrint("");
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Browse",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            " Attach Certificates",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.attach_file,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              debugPrint("");
                            },
                          )
                        ],
                      )
                    ],
                  ),
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
                        hint: Text("Pen and Tablet"),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        items: ptSelect.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (String newValueSelected) {
                          setState(() {
                            this.penTablet = newValueSelected;
                          });
                        },
                        value: penTablet,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                keyboardType: TextInputType.text,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "*****324L",
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: "PAN Card Number ",
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
                        hint: Text("Verification Document"),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        items: verificationDocument
                            .map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (String newValueSelected) {
                          setState(() {
                            this.documentSelect = newValueSelected;
                          });
                        },
                        value: documentSelect,
                      ),
                    ),
                  ),
                )
              ],
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 57,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white38,
                      )),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              debugPrint("");
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Browse",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Verification Document",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.attach_file,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              debugPrint("");
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ExperienceScreen.id);
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
