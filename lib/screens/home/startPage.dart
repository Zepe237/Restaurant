import 'package:flutter/material.dart';
import 'scanPage.dart';
class StartSceen extends StatefulWidget {
  const StartSceen({ Key? key }) : super(key: key);

  @override
  _StartSceen createState() => _StartSceen();
}

class _StartSceen extends State<StartSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feusap Scan'),

      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                  Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  ),
                ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width/2)-20,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanPage()));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.payment, color: Colors.pinkAccent.shade400,),
                          Padding(
                            padding: EdgeInsets.only(left: 20, ),
                  ),
                          Text(
                            'Pay',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.blueAccent,
                ),
                    ),
                        ],
                      ),
                    )
                  ),
                ],
              ),
              
            ),
        
      
    );
  }
}