import 'package:flutter/material.dart';
import 'package:grad2live_login/ui/video_screen.dart';

class ExperienceScreen extends StatefulWidget {
  static const String id = "experience_screen";
  @override
  _ExperienceScreenState createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  bool checkBoxValue = false;
  String qualificationSelect = "Select Qualification";
  List<String> qualification = ["Select Qualification", "BA", "MA", "BCA"];
  String experienceSelect = "Select no of years";
  List<String> experience = [
    "Select no of years",
    "1",
    "2",
    "3",
    "4",
    "More than 4"
  ];
  String totalQualificationSelect = "Total teaching experience";
  List<String> totalQualification = [
    "Total teaching experience",
    "BA",
    "MA",
    "BCA"
  ];
  String yearSelect = "Year of Establishment";
  List<String> year = [
    "Year of Establishment",
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
    return Scaffold(
        appBar: AppBar(
          title: Text("Become an Edupreneur"),
          backgroundColor: Colors.grey.shade900,
        ),
        backgroundColor: Colors.white12,
        body: ListView(
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text(
                "Education Qualification And Experience",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
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
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 2.0, bottom: 2.0),
                  child: DropdownButton<String>(
                    hint: Text("Select qualification"),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    items: qualification.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(dropDownStringItem),
                      );
                    }).toList(),
                    onChanged: (String newValueSelected) {
                      setState(() {
                        this.qualificationSelect = newValueSelected;
                      });
                    },
                    value: qualificationSelect,
                  ),
                ),
              ),
            ),
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
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 2.0, bottom: 2.0),
                  child: DropdownButton<String>(
                    hint: Text("Select qualification"),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    items: totalQualification.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(dropDownStringItem),
                      );
                    }).toList(),
                    onChanged: (String newValueSelected) {
                      setState(() {
                        this.totalQualificationSelect = newValueSelected;
                      });
                    },
                    value: totalQualificationSelect,
                  ),
                ),
              ),
            ),
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
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 2.0, bottom: 2.0),
                  child: DropdownButton<String>(
                    hint: Text("Select no of years"),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    items: experience.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(dropDownStringItem),
                      );
                    }).toList(),
                    onChanged: (String newValueSelected) {
                      setState(() {
                        this.experienceSelect = newValueSelected;
                      });
                    },
                    value: experienceSelect,
                  ),
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
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white38),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter other relevant experience",
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: "Other Relevant Experience ",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Other Details",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "If you are a coaching/educational Institute,  please fill the following details as well:",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                keyboardType: TextInputType.text,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white38),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter name of coaching institute",
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: "Name of the Coaching Institute",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white)),
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
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white38),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter your GST number",
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: "GSTIN Number",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white)),
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
                            " Attach GST Certificate",
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
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 2.0, bottom: 2.0),
                  child: DropdownButton<String>(
                    hint: Text("Year of Establishment"),
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
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 57,
                  width: 180,
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
                            "Establishment Certificate",
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
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.deepOrange,
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, demoVideo.id);
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
