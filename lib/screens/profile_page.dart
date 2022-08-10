import 'package:flutter/material.dart';

import '../constants.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        elevation: 2,
        //title: const Text('App Title'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                            image: AssetImage('images/profil.png'),
                            fit: BoxFit.fill,),
                      shape: BoxShape.circle,
                      color: buttonColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Text(
                    "Merhaba Zeynep",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                    padding:
                        const EdgeInsets.only(top: 30.0,),
                    child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                            color: buttonColor,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(10, 10),
                                  blurRadius: 10,
                                  color: Color.fromARGB(255, 15, 6, 24))
                            ]),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 8, bottom: 8, left: 20.0),
                          child: Text(
                            'ÖDÜLLER',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.start,
                          ),
                        ))),
              SingleChildScrollView( scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only( top: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/odul.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: buttonColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/odul_1.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: buttonColor,
                          ),
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.all(15.0),
                         child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/odul_2.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: buttonColor,
                          ),
                      ),
                       ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/odul_3.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: buttonColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/odul_4.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: buttonColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/odul_5.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: buttonColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/odul_6.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: buttonColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/odul_7.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: buttonColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/odul_8.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: buttonColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/odul_9.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: buttonColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/odul_10.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: buttonColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/odul_11.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: buttonColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                    padding:
                        const EdgeInsets.only(top: 30.0,),
                    child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                            color: buttonColor,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(10, 10),
                                  blurRadius: 10,
                                  color: Color.fromARGB(255, 15, 6, 24))
                            ]),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 8, bottom: 8, left: 20.0),
                          child: Text(
                            'TAKVİM',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ))),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(height: 406,
                          width: 368,
                          decoration: BoxDecoration(
                            border: Border.all(color: buttonColor, width: 2 ),
                            image: DecorationImage(image: AssetImage('images/takvim.png')),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: buttonColor,
                            
                          ),),
                        )
            ],
          ),
        ),
      ),
    );
  }
}
