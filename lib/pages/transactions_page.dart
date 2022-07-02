import 'package:bank_app/models/transaction.dart';

import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(45.0),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: Icon(
                      Icons.attach_money_rounded,
                      size: 80,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your currancy is:",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("2,000,000",
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20, top: 5, right: 20, bottom: 30),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 50, 245, 66),
                              Color.fromARGB(255, 55, 231, 113)
                            ]),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );

    Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 100, 152, 241),
        title: Text("Transactions List"),
      ),
    );
  }
}
      
//     //  body: ListView.builder(
//     //  itemCount: Transactions.trans.length,
//     //   itemBuilder: (context,index)  {
//     //   return Text("Hello")
    
    
    
    
//       }
//     )); }
// } // REMOVE THESE TWO AFTER UNCOMMENTING!!!