import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color.dart';

class flags extends StatefulWidget {
  const flags({Key? key}) : super(key: key);

  @override
  _flagsState createState() => _flagsState();
}

class _flagsState extends State<flags> {
  String dropdownvalue = 'time motor1';
  var items = ['time motor1', 'time motor2', 'time motor3', 'time motor4'];
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

  var t1 = const LocaleText('number');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: color().appBackGroundColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          height: MediaQuery.of(context).size.height + 290,
          padding: EdgeInsets.only(top: 30, left: 20, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
                      value: dropdownvalue,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: LocaleText(
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
                      height: 36,
                      width: 100,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            bottom: 18,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: 'Number',
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
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LocaleText(
                            'send',
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
                        title: Row(
                          children: [
                            LocaleText(
                              'flag',
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    color: Colors.white70, fontSize: 19),
                              ),
                            ),
                            Text(
                              ' $index',
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    color: Colors.white70, fontSize: 19),
                              ),
                            ),
                          ],
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
                            LocaleText(
                              'send',
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
      ),
    );
  }
}
