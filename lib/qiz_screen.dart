import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List qa = ["Which Animal is National Animal of India?","From Where did Narendra Modi Belong to?","Which City is Biggest City in Gujrat?","Who did India's Biggest Scam?","What is Proffesion of MS Dhoni?"];
  List A = ["Lion","Gujrat","Surat","Vijay Malya","TC"];
  List B = ["Tiger","Maharashtra","Vadodra","Harshad Mehta","Cricketer"];
  List C = ["Penguin","Kashmir","Ahamdabad","Mukesh Ambani","Singer"];
  List D = ["Dog","Tamil Nadu","Rajkot","Nirav Modi","Accountant"];

  List answer = ["Tiger","Gujrat","Ahamdabad","Nirav Modi","Cricketer"];
  List U_ans = [];

  int i = 0;
  int finalans = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    i=0;
                  });
                },
                icon: Icon(Icons.history))
          ],
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                    height: 200,
                    width: 200,
                    padding: EdgeInsets.only(left: 20,right: 20),
                    alignment: Alignment.center,
                    child: Text("${qa[i]}", style: TextStyle(fontSize: 30, color: Colors.white),)
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        U_ans.add(A[i]);
                        print(U_ans);
                        if(i<4)
                        {
                          i++;
                        }
                      });

                      if(i==4)
                      {
                        finalans = result();
                        print("--------$finalans");
                        Navigator.pushNamed(context, 'rt',arguments: finalans);
                      };

                    }, child: Text("A ${A[i]}",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(primary: Colors.grey),),
                  ),

                  Container(
                    height: 60,
                    width: 150,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        U_ans.add(B[i]);
                        print(U_ans);
                        if(i<4)
                        {
                          i++;
                        }
                      });

                      if(i==4)
                      {
                        finalans = result();
                        print("--------$finalans");
                        Navigator.pushNamed(context, 'ans',arguments: finalans);
                      };

                    }, child: Text("B ${B[i]}",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(primary: Colors.grey),),
                  ),
                ],
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        U_ans.add(C[i]);
                        print(U_ans);
                        if(i<4)
                        {
                          i++;
                        }
                      });

                      if(i==4)
                      {
                        finalans = result();
                        print("--------$finalans");
                        Navigator.pushNamed(context, 'ans',arguments: finalans);
                      };

                    }, child: Text("C ${C[i]}",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(primary: Colors.grey),),
                  ),

                  Container(
                    height: 60,
                    width: 150,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        U_ans.add(D[i]);
                        print(U_ans);
                        if(i<4)
                        {
                          i++;
                        }
                      });

                      if(i==4)
                      {
                        finalans = result();
                        print("--------$finalans");
                        Navigator.pushNamed(context, 'rt',arguments: finalans);
                      };

                    }, child: Text("D ${D[i]}",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(primary: Colors.grey),),
                  ),
                ],
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }

  int result()
  {
    int marks = 5;
    for(int j=0; j<answer.length;j++)
    {
      if(answer[j]!=U_ans[j])
      {
        marks--;
      }
    }
    return marks;
  }
}