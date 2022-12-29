import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
var size,height,width;
int b4=0;
class GHJK_Eng_College extends StatefulWidget {
  const GHJK_Eng_College({Key? key}) : super(key: key);

  @override
  State<GHJK_Eng_College> createState() => _GHJK_Eng_CollegeState();
}

class _GHJK_Eng_CollegeState extends State<GHJK_Eng_College> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromRGBO(14, 60, 110, 1),
            leading: GestureDetector(
                child: Icon(Icons.arrow_back,)
            ),
            actions: [
              Icon(Icons.bookmark_border_outlined)
            ],
          ),
        body: DefaultTabController(
          length: 4,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      height: height/4,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('photos/ghjk/ghjk.jpg'),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width/25,top: height/100),
                            child: Text('GHJK Engineering college',
                                style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: height/50,
                                )
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: height/100),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectur adipiscing elit\n'
                                      'Felis consectur nulla pharetra praesent hendrerit\n'
                                      'vulputate viverra. Pellentesque aliquam tempus faucibus\n'
                                      'est.',
                                  style: TextStyle(
                                    fontSize: height/70,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: width/25),
                                child: Container(
                                  height: height/18,
                                  width: width/12,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(height/100)
                                  ),
                                  child: Column(
                                    children: [
                                      Text('4.3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      Icon(Icons.star,color: Colors.white,),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SliverStickyHeader(
                sticky: true,
                header: Container(
                  height: height*(1/22),
                  color: Colors.white,
                  child: TabBar(
                    indicatorColor: Color.fromRGBO(14, 60, 110, 1),
                    indicatorWeight: height/200,
                    tabs: [
                      Tab(child: Text('About College',style: TextStyle(color: Colors.black,fontSize: width/38),),),
                      Tab(child: Text('Hostel facility',style: TextStyle(color: Colors.black,fontSize: width/38),),),
                      Tab(child: Text('Q & A',style: TextStyle(color: Colors.black,fontSize: width/35),),),
                      Tab(child: Text('Events',style: TextStyle(color: Colors.black,fontSize: width/35),),),
                    ],
                  ),
                ),
                sliver: SliverFillRemaining(
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:width/20,top: height/75,right: width/20),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  textAlign: TextAlign.start,
                                  'Description',
                                  style: TextStyle(
                                    fontSize: height/50,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  textAlign: TextAlign.start,
                                  'Lorem ipsum dolor sit amet, consectetur adipising elit.\n'
                                      'Neque accumsan, scelerisque eget lectus ullamcorper a\n'
                                      'placerat. Porta cras at pretium varius purus cursus. Morbi\n'
                                      'justo commodo habitant morbi quis pharetra posuere\n'
                                      'mauris. Morbi sit risus, diam amet volutpat quis. Nisi\n'
                                      'pellentesque nec facilisis ultrices.',
                                  style: TextStyle(
                                    fontSize: height/70,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: height/50),
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    'Location',
                                    style: TextStyle(
                                      fontSize: height/45,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: height/4,
                                child: Image.asset('photos/ghjk/ghjk_loc.jpg'),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: height/50),
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    'Student Review',
                                    style: TextStyle(
                                      fontSize: height/45,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(width/50),
                                    child: Container(
                                      height:height/20,
                                      width: width/10,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(width/50),
                                    child: Container(
                                      height:height/20,
                                      width: width/10,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(width/50),
                                    child: Container(
                                      height:height/20,
                                      width: width/10,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(width/50),
                                    child: Container(
                                      height:height/20,
                                      width: width/10,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(width/50),
                                    child: Container(
                                      height:height/20,
                                      width: width/10,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(width/50),
                                    child: Container(
                                      height:height/20,
                                      width: width/7,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(child: Text('+12',style: TextStyle(fontWeight: FontWeight.bold),)),
                                    ),
                                  ),


                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: height/100,left: width/10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(width/50),
                                    child: ElevatedButton.icon(
                                      onPressed: (){},
                                      icon: Icon(Icons.night_shelter_outlined),
                                      label: Text('4'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Color.fromRGBO(14, 60, 110, 1),
                                        elevation: 20,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(width/50),
                                    child: ElevatedButton.icon(
                                      onPressed: (){},
                                      icon: Icon(Icons.night_shelter_outlined,color: Colors.black,),
                                      label: Text('3',style: TextStyle(color: Colors.black),),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        elevation: 20,
                                        side: BorderSide(width: 1,color: Color.fromRGBO(14, 60, 110, 1),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(width/50),
                                    child: ElevatedButton.icon(
                                      onPressed: (){},
                                      icon: Icon(Icons.night_shelter_outlined,color: Colors.black,),
                                      label: Text('2',style: TextStyle(color: Colors.black),),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        elevation: 20,
                                        side: BorderSide(width: 1,color: Color.fromRGBO(14, 60, 110, 1),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(width/50),
                                    child: ElevatedButton.icon(
                                      onPressed: (){},
                                      icon: Icon(Icons.night_shelter_outlined,color: Colors.black,),
                                      label: Text('1',style: TextStyle(color: Colors.black),),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        elevation: 20,
                                        side: BorderSide(width: 1,color: Color.fromRGBO(14, 60, 110, 1),),
                                      ),
                                    ),
                                  ),


                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width/12),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.all(width/50),
                                    child: Container(
                                      height:height/10,
                                      width: width/4,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle
                                      ),
                                      child: Image.asset('photos/ghjk_hostel/ghjk_hostel1.jpg',),
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.all(width/50),
                                    child: Container(
                                      height:height/10,
                                      width: width/4,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle
                                      ),
                                      child: Image.asset('photos/ghjk_hostel/ghjk_hostel2.jpg',),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: width/25,top: height/100,right: height/15),
                                  child: Text('GHJK Engineering Hostel',
                                      style:TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: height/50,
                                      )
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: width/25,left: height/20),
                                  child: Container(
                                    height: height/25,
                                    width: width/8,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(height/100)
                                    ),
                                    child: Row(
                                      children: [
                                        Text('4.3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                        Icon(Icons.star,color: Colors.white,),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: height/100),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipising elit.\n'
                                    'Neque accumsan, scelerisque eget lectus ullamcorper a\n'
                                    'placerat. Porta cras at pretium varius purus cursus. Morbi\n'
                                    'justo commodo habitant morbi quis pharetra posuere\n'
                                    'mauris. Morbi sit risus, diam amet volutpat quis. Nisi\n'
                                    'pellentesque nec facilisis ultrices.',
                                style: TextStyle(
                                  fontSize: height/70,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width/15,top: height/75),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  textAlign: TextAlign.start,
                                  'Facilities',
                                  style: TextStyle(
                                    fontSize: height/50,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width/20,top: height/75),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Icon(Icons.school_outlined,color: Colors.orange,),
                                    Text(
                                      textAlign: TextAlign.start,
                                      'College in 400mtrs',
                                      style: TextStyle(
                                        fontSize: height/75,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width/20,top: height/75),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Icon(Icons.bathtub,color:Colors.blueAccent,),
                                    Text(
                                      textAlign: TextAlign.start,
                                      'Bathrooms : 2',
                                      style: TextStyle(
                                        fontSize: height/75,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Container(
          height: height/20,
          width: width/1.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: FloatingActionButton(
            backgroundColor: Color.fromRGBO(14, 60, 110, 1),
            splashColor: Colors.white,
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5)
            ),
            onPressed: (){},
            child: Text('Apply Now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),),
          ),
        )
      ),
    );
  }
}


