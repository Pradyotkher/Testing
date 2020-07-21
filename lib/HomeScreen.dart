import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightBlue,
        title: Center(
          child: Text(
            'My First App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.red,
              ),
              child:Center(
                child: Text(
                  '$counter',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: (){
                        setState(() {
                          counter=counter+1;
                        });
                      },
                  ),
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: (){
                      setState(() {
                        counter=counter-1;
                        if(counter<0){
                          counter=0;
                          Alert(
                            context: context,
                            type: AlertType.error,
                            title: "Invalid",
                            desc: "Number cannot be less than 0.",
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "Okay",
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () => Navigator.pop(context),
                                width: 120,
                              )
                            ],
                          ).show();
                        }

                      });
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
