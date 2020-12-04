import 'package:flutter/material.dart';
class DivTab extends StatefulWidget{
  @override
  _DivTabState createState() => _DivTabState();

}
class _DivTabState extends State<DivTab> with AutomaticKeepAliveClientMixin{
  bool get wantKeepAlive => true;
  double num1 ;
  double num2 ;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: Container(
                    width: 140,
                    height: 60,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                        decoration: InputDecoration(
                          hintText: 'First Number',
                          hintStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.blue,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.blue, width: 2.5)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.blue, width: 2.5)),
                        ),
                        onChanged: (value) {
                          num1 = double.parse(value);
                        }),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Center(child: Text('/',style: TextStyle(color: Colors.blue,fontSize: 45),)),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    width: 140,
                    height: 60,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                        decoration: InputDecoration(
                          hintText: 'Second Number',
                          hintStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.blue,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color:Colors.blueAccent, width: 2.5)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.white, width: 2.5)),
                        ),
                        onChanged: (value) {
                          num2 = double.parse(value);
                        }),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.blue,
              child: Text(
                '=',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              onPressed: () {
           setState(() {
                  result=num1/num2;

                });
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '$result',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
          )
        ],
      ),
    );
  }

}