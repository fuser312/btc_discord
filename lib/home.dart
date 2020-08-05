import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selection;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Color(0xff979797),
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.width * 1,
              color: Color(0xff979797),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                      Text(
                        "Send",
                        style: TextStyle(fontSize: 18),
                      ),
                      GestureDetector(
                        onTap: showBtc,
                        child: Image(
                          image: AssetImage("assets/switch2.png"),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffFEB919),
                      minRadius: 32,
                      child: Text(
                        "AC",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Allen Cheongsam",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff404A68)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 800,
                color: Color(0xffF1F3F6),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 0.5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xffF1F3F6)),
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 150,
                //color: Color(0xffDDE6F6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      child: Text(
                        "Amount",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff404A68)),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          color: Color(0xff3D4560),
                          child: Center(
                            child: TextFormField(
                              initialValue: "please enter your amount",
                              decoration: InputDecoration(
                                contentPadding: new EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 12),
                                filled: true,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: 'including fees',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff404A68)),
                              /*defining default style is optional */
                              children: <TextSpan>[
                                TextSpan(
                                    text: '     OXIF',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffFEB919))),
                              ],
                            ),
                          ),
                          SizedBox(),
                          RichText(
                            text: TextSpan(
                              text: 'OXIF',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffFEB919)),
                              /*defining default style is optional */
                              children: <TextSpan>[
                                TextSpan(
                                    text: '     available',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff404A68))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 0.95,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xffF1F3F6)),
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 150,
                //color: Color(0xffDDE6F6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      child: Text(
                        "notes",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff404A68)),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          color: Color(0xffF9FAFC),
                          child: Center(
                            child: TextFormField(
                              initialValue: "please enter notes",
                              style: TextStyle(color: Color(0xffAAB1C6)),
                              decoration: InputDecoration(
                                contentPadding: new EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 12),
                                filled: true,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(left: 40, bottom: 120, child: Text("note... abc")),
            Positioned(
              bottom: 0,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 24.0, bottom: 16),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .9,
                    child: FlatButton(
                      color: Color(0xffFEB919),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(
                          color: Color(0xffFEB919),
                        ),
                      ),
                      onPressed: showLinkedDialoug,
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * .7,
                        child: Center(
                          child: Text(
                            'Send',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffFFFFFF)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<bool> showLinkedDialoug() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Verification Code",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff333333)),
                  ),
                  Row(
                    children: <Widget>[
                      VerificationCode(),
                      VerificationCode(),
                      VerificationCode(),
                      VerificationCode(),
                      VerificationCode(),
                      VerificationCode(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 100,
                        child: FlatButton(
                          onPressed: null,
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width * .7,
                            child: Center(
                              child: Text(
                                'cancel',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Overpass_Regular",
                                    color: Color(0xffAAB1C6)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        child: FlatButton(
                          onPressed: successDialog,
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width * .7,
                            child: Center(
                              child: Text(
                                'confirm',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffFEB919)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  Future<bool> successDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/success.png"),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Success",
                    style: TextStyle(fontSize: 16, color: Color(0xff404A68)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Transfer Success",
                    style: TextStyle(fontSize: 16, color: Color(0xff404A68)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffFEB919),
                    ),
                    width: 200,
                    child: FlatButton(
                      color: Color(0xFF5BC0CD),
                      onPressed: null,
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * .7,
                        child: Center(
                          child: Text(
                            'Go to contacts',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Future<bool> showBtc() {
    return showDialog(
        context: context,
        builder: (_) =>
          Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 320, right: 20, left: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
                 color: Colors.white,
                 height: 100,
                  child: Column(
                    children: <Widget>[
                      BtcRow(),
                      BtcRow(),
                      BtcRow(),
                      BtcRow(),
                    ],
                  ),


            ),
          )

    );
  }
}

class BtcRow extends StatelessWidget {
  const BtcRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 40,
              maxHeight: 40,
            ),
            child: Image(
              image: AssetImage("assets/btc.png"),
            ),
          ),
          SizedBox(
            height: 48,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 40,
              maxHeight: 40,
            ),
            child: Image(
              image: AssetImage("assets/btc.png"),
            ),
          ),
          SizedBox(
            height: 48,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 40,
              maxHeight: 40,
            ),
            child: Image(
              image: AssetImage("assets/btc.png"),
            ),
          ),
          SizedBox(
            height: 48,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 40,
              maxHeight: 40,
            ),
            child: Image(
              image: AssetImage("assets/btc.png"),
            ),
          ),
        ],
      ),
    );
  }
}

class VerificationCode extends StatelessWidget {
  const VerificationCode({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Container(
        width: 36,
        height: 36,
        color: Colors.white,
        child: Center(
          child: TextFormField(
            readOnly: true,
            initialValue: "1",
            decoration: InputDecoration(
              contentPadding:
                  new EdgeInsets.only(top: 6, bottom: 12, left: 12, right: 12),
              filled: true,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
