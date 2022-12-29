import 'package:flutter/material.dart';
import 'package:skygoal/ghjk_eng_college.dart';
var size,height,width;

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height/7),
          child: Container(
              height: height/2,
              width: width*0.85,
              decoration: BoxDecoration(
                color: Color.fromRGBO(14, 60, 110, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30),
                ),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: width/20,bottom: height/50),
                        child: SizedBox(
                          height: height/16,
                          width: width/1.4,
                          child: TextField(
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none
                              ),
                              hintText: 'Search for colleges, schools...',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: height/65,
                              ),
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: width/25,bottom: height/50),
                        child: Container(
                          height: height/16,
                          width: width/8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0)
                            ),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.mic,
                            color: Color.fromRGBO(14, 60, 110, 1),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              )
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: height/15,
                  ),
                  Padding(
                    padding: EdgeInsets.all(width/100),
                    child: Container(
                      height: height/25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          color: Colors.grey,
                          width: width/300,
                        )
                      ),
                      child: Center(child: Text('MVSH Engineering College')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(width/100),
                    child: Container(
                      height: height/25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                            color: Colors.grey,
                            width: width/300,
                          )
                      ),
                      child: Center(child: Text('MVSH Engineering College')),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: height/7,
                    width: width/1.1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      image: DecorationImage(
                        //fit: BoxFit.cover,
                        image: AssetImage('photos/college/college1.jpg'),
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration:BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(Icons.share_outlined,size: height/40,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration:BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(Icons.bookmark_border_outlined,size: height/40,),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                  Container(
                    height: height/7,
                    width: width/1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: height/50,
                        )
                      ],
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: width/25,top: height/50),
                              child: Text('GHJK Engineering college',style: TextStyle(fontWeight: FontWeight.bold,fontSize: width/26),),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: width/30,top: height/60),
                              child: Container(
                                height: height/40,
                                width: width/8,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('4.3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: width/30),),
                                    Icon(Icons.star,color: Colors.white,size: width/24,)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: width/25,top: height/100,bottom: width/50),
                              child: Text('Lorem ipsum dolor sit amet, consecture adipiscing \n'
                                  'elit. Eu ut imperdiet sed nec ullamcorper.',
                                style: TextStyle(color: Colors.grey,fontSize: width/40),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const GHJK_Eng_College()),);
                                  },
                                child: Container(
                                  height: height/35,
                                  width: width/5,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(14, 60, 110, 1),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text(
                                        'Apply',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: width/30),
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                          width: width/1.2,
                          child: const DecoratedBox(
                            decoration: const BoxDecoration(
                                color: Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: width/25,top: height/200),
                                child: Icon(Icons.thumb_up_alt_outlined),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:width/50,top: height/100),
                                child: Text(
                                    "More than 1000+ students have been placed",
                                  style: TextStyle(
                                    fontSize: height/75
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width/15,top: height/100),
                                child: Row(
                                  children: [
                                    Icon(Icons.remove_red_eye_outlined,color: Colors.grey,size: height/50,),
                                    Text('468+',style: TextStyle(fontSize: height/100),),
                                  ],
                                ),
                              )
                            ],
                          )
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top:height/50),
                child: Column(
                  children: [
                    Container(
                      height: height/7,
                      width: width/1.1,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        image: DecorationImage(
                          //fit: BoxFit.cover,
                          image: AssetImage('photos/college/college1.jpg'),
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(Icons.share_outlined,size: height/40,),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(Icons.bookmark_border_outlined,size: height/40,),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                    Container(
                      height: height/7,
                      width: width/1.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: height/50,
                          )
                        ],
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: width/25,top: height/50),
                                child: Text('GHJK Engineering college',style: TextStyle(fontWeight: FontWeight.bold,fontSize: width/26),),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(right: width/30,top: height/60),
                                child: Container(
                                  height: height/40,
                                  width: width/8,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('4.3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: width/30),),
                                      Icon(Icons.star,color: Colors.white,size: width/24,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: width/25,top: height/100,bottom: width/50),
                                child: Text('Lorem ipsum dolor sit amet, consecture adipiscing \n'
                                    'elit. Eu ut imperdiet sed nec ullamcorper.',
                                  style: TextStyle(color: Colors.grey,fontSize: width/40),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const GHJK_Eng_College()),);
                                  },
                                  child: Container(
                                    height: height/35,
                                    width: width/5,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(14, 60, 110, 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'Apply',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: width/30),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1,
                            width: width/1.2,
                            child: const DecoratedBox(
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: width/25,top: height/200),
                                    child: Icon(Icons.thumb_up_alt_outlined),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:width/50,top: height/100),
                                    child: Text(
                                      "More than 1000+ students have been placed",
                                      style: TextStyle(
                                          fontSize: height/75
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: width/15,top: height/100),
                                    child: Row(
                                      children: [
                                        Icon(Icons.remove_red_eye_outlined,color: Colors.grey,size: height/50,),
                                        Text('468+',style: TextStyle(fontSize: height/100),),
                                      ],
                                    ),
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:height/50),
                child: Column(
                  children: [
                    Container(
                      height: height/7,
                      width: width/1.1,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        image: DecorationImage(
                          //fit: BoxFit.cover,
                          image: AssetImage('photos/college/college1.jpg'),
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(Icons.share_outlined,size: height/40,),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(Icons.bookmark_border_outlined,size: height/40,),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                    Container(
                      height: height/7,
                      width: width/1.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: height/50,
                          )
                        ],
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: width/25,top: height/50),
                                child: Text('GHJK Engineering college',style: TextStyle(fontWeight: FontWeight.bold,fontSize: width/26),),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(right: width/30,top: height/60),
                                child: Container(
                                  height: height/40,
                                  width: width/8,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('4.3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: width/30),),
                                      Icon(Icons.star,color: Colors.white,size: width/24,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: width/25,top: height/100,bottom: width/50),
                                child: Text('Lorem ipsum dolor sit amet, consecture adipiscing \n'
                                    'elit. Eu ut imperdiet sed nec ullamcorper.',
                                  style: TextStyle(color: Colors.grey,fontSize: width/40),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const GHJK_Eng_College()),);
                                  },
                                  child: Container(
                                    height: height/35,
                                    width: width/5,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(14, 60, 110, 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'Apply',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: width/30),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1,
                            width: width/1.2,
                            child: const DecoratedBox(
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: width/25,top: height/200),
                                    child: Icon(Icons.thumb_up_alt_outlined),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:width/50,top: height/100),
                                    child: Text(
                                      "More than 1000+ students have been placed",
                                      style: TextStyle(
                                          fontSize: height/75
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: width/15,top: height/100),
                                    child: Row(
                                      children: [
                                        Icon(Icons.remove_red_eye_outlined,color: Colors.grey,size: height/50,),
                                        Text('468+',style: TextStyle(fontSize: height/100),),
                                      ],
                                    ),
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Search',
              backgroundColor: Color.fromRGBO(14, 60, 110, 2),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Saved',
              backgroundColor: Color.fromRGBO(14, 60, 110, 2),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note_rounded),
              label: 'Saved',
              backgroundColor: Color.fromRGBO(14, 60, 110, 2),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),

              label: 'Account',
              backgroundColor: Color.fromRGBO(14, 60, 110, 2),
            ),
          ],
        ),
      ),
    );
  }
}
