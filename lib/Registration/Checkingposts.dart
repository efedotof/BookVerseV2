import 'package:flutter/material.dart';
import 'package:readerabooks/HomeScreen/Home.dart';

class Checkinposts extends StatefulWidget {
  const Checkinposts({super.key});

  @override
  State<Checkinposts> createState() => _CheckinpostsState();
}

class _CheckinpostsState extends State<Checkinposts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons
              .chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('We sent your code to verify your email'),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(4, (index) =>  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(width: MediaQuery.of(context).size.width * 0.2, height: MediaQuery.of(context).size.width * 0.2,decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                           boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                                  ],
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.2, height: MediaQuery.of(context).size.width * 0.2,
                          child: TextField(
                            decoration: InputDecoration(
                    
                            border: InputBorder.none
                          ),
                          ),
                        ),
                        
                        ),
                    ),),
                  ),
                  Text('Не получили код ? Запросить заново через 00:10'),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap:(){
                         Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Home()),
                            );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}