import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PinHome extends StatefulWidget {
  @override
  _PinHomeState createState() => _PinHomeState();
}

class _PinHomeState extends State<PinHome> {
  var selectedindex = 0;
  String code = '';

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    );
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print("Code is $code");
    return Scaffold(
        backgroundColor: const Color(0xFF7F3DFF),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 10,
          ),
          const Text(
            'Let’s  setup your PIN',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Container(
            height: height * 0.75,
            width: width,
            decoration: const BoxDecoration(
              color: Color(0xFF7F3DFF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SizedBox(
              height: 40,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      DigitHolder(
                                        width: width,
                                        index: 0,
                                        selectedIndex: selectedindex,
                                        code: code,
                                        key: UniqueKey(),
                                      ),
                                      DigitHolder(
                                        width: width,
                                        index: 1,
                                        selectedIndex: selectedindex,
                                        code: code,
                                        key: UniqueKey(),
                                      ),
                                      DigitHolder(
                                        width: width,
                                        index: 2,
                                        selectedIndex: selectedindex,
                                        code: code,
                                        key: UniqueKey(),
                                      ),
                                      DigitHolder(
                                        width: width,
                                        index: 3,
                                        selectedIndex: selectedindex,
                                        code: code,
                                        key: UniqueKey(),
                                      ),
                                    ],
                                  )),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                color: const Color(0xFF7F3DFF),
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: TextButton(
                                                  onPressed: () {
                                                    addDigit(1);
                                                  },
                                                  child: Text('1',
                                                      style: textStyle)),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: TextButton(
                                                  onPressed: () {
                                                    addDigit(2);
                                                  },
                                                  child: Text('2',
                                                      style: textStyle)),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: TextButton(
                                                  onPressed: () {
                                                    addDigit(3);
                                                  },
                                                  child: Text('3',
                                                      style: textStyle)),
                                            ),
                                          ],
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: TextButton(
                                                  onPressed: () {
                                                    addDigit(4);
                                                  },
                                                  child: Text('4',
                                                      style: textStyle)),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: TextButton(
                                                  onPressed: () {
                                                    addDigit(5);
                                                  },
                                                  child: Text('5',
                                                      style: textStyle)),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: TextButton(
                                                  onPressed: () {
                                                    addDigit(6);
                                                  },
                                                  child: Text('6',
                                                      style: textStyle)),
                                            ),
                                          ],
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: TextButton(
                                                  onPressed: () {
                                                    addDigit(7);
                                                  },
                                                  child: Text('7',
                                                      style: textStyle)),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: TextButton(
                                                  onPressed: () {
                                                    addDigit(8);
                                                  },
                                                  child: Text('8',
                                                      style: textStyle)),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: TextButton(
                                                  onPressed: () {
                                                    addDigit(9);
                                                  },
                                                  child: Text('9',
                                                      style: textStyle)),
                                            ),
                                          ],
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: TextButton(
                                                  onPressed: () {
                                                    backspace();
                                                  },
                                                  child: const Icon(
                                                      Icons.backspace_outlined,
                                                      color: Colors.white,
                                                      size: 30)),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: TextButton(
                                                  onPressed: () {
                                                    addDigit(0);
                                                  },
                                                  child: Text('0',
                                                      style: textStyle)),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: TextButton(
                                                  onPressed: () {},
                                                  child: const Icon(Icons.check,
                                                      color: Colors.white,
                                                      size: 30)),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          )
        ]));
  }

  addDigit(int digit) {
    if (code.length > 3) {
      return;
    }
    setState(() {
      code = code + digit.toString();
      // ignore: avoid_print
      print('Code is $code');
      selectedindex = code.length;
    });
  }

  backspace() {
    if (code.isEmpty) {
      return;
    }
    setState(() {
      code = code.substring(0, code.length - 1);
      selectedindex = code.length;
    });
  }
}

class DigitHolder extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final String code;
  const DigitHolder({
    required this.selectedIndex,
    required Key key,
    required this.width,
    required this.index,
    required this.code,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 20,
      width: 40,
      margin: const EdgeInsets.only(right: 10),
      decoration:
          BoxDecoration(color: Colors.grey, shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: index == selectedIndex ? Colors.blue : Colors.white,
          offset: const Offset(0, 0),
          spreadRadius: 1.5,
          blurRadius: 2,
        )
      ]),
      child: code.length > index
          ? Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            )
          : Container(),
    );
  }
}
