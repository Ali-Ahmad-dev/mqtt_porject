import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color.dart';

class flags extends StatefulWidget {
  const flags({Key? key}) : super(key: key);

  @override
  _flagsState createState() => _flagsState();
}

class _flagsState extends State<flags> {
  String dropdownvalue = 'Time Motor1';
  var items = ['Time Motor1', 'Time Motor2', 'Time Motor3', 'Time Motor4'];
  int index = 1;
  List<bool> lsttoggleSwitch = List.generate(15, (index) => true);
  bool isSwitched = false;

  void toggleSwitch(value) {
    if (lsttoggleSwitch[value] == false) {
      setState(() {
        lsttoggleSwitch[value] = true;
      });
    } else {
      setState(() {
        lsttoggleSwitch[value] = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: color().appBackGroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height + 290,
        padding: EdgeInsets.only(top: 30, left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton(
                    value: dropdownvalue,
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: GoogleFonts.ubuntu(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        dropdownvalue = newValue.toString();
                      });
                    },
                    focusColor: Colors.black,
                    iconEnabledColor: Colors.white,
                    dropdownColor: color().appBackGroundColor,
                  ),
                  SizedBox(
                    height: 50,
                    width: 110,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: ' Numbers',
                        hintStyle: GoogleFonts.ubuntu(
                          textStyle:
                              TextStyle(color: Colors.white70, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                width: 200,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' Send  ',
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                color: color().TextColor, fontSize: 19),
                          ),
                        ),
                        Icon(
                          Icons.send,
                          color: color().greenAccent,
                        ),
                      ],
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: color().backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    elevation: 4,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              height: 460,
              child: ListView.builder(
                  itemCount: lsttoggleSwitch.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SwitchListTile(
                      title: Text(
                        'Flags ${index + 1}',
                        style: GoogleFonts.ubuntu(
                          textStyle:
                              TextStyle(color: Colors.white70, fontSize: 19),
                        ),
                      ),
                      value: lsttoggleSwitch[index],
                      onChanged: (val) {
                        setState(() {
                          lsttoggleSwitch[index] = val;
                        });
                      },
                      activeTrackColor: Colors.green.shade100,
                      activeColor: color().greenAccent,
                      inactiveTrackColor: Colors.grey,
                    );
                  }),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SizedBox(
                  width: 200,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' Send  ',
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                  color: color().TextColor, fontSize: 19),
                            ),
                          ),
                          Icon(
                            Icons.send,
                            color: color().greenAccent,
                          ),
                        ],
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: color().backgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      elevation: 3,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
