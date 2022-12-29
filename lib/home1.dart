import 'package:flutter/material.dart';
import 'package:skygoal/home2.dart';
var size,height,width;
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height/5),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: width/20,top: height/50),
                        child: Text(
                            'Find your own way',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: width/20,bottom: height/50,right: height/50),
                        child: Icon(
                            Icons.notifications,
                        color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: width/20,bottom: height/50,top:height/75),
                    child: Padding(
                      padding: EdgeInsets.only(right: width/3),
                      child: Text(
                        'Search in 600 colleges around !',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
          ),
                    ),
                  ),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width/15,bottom: height/100,top: height/15),
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return select();
                      },
                    );
                  },
                  child: Container(
                    height: height/6,
                    width: width*0.85,
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                    ),
                            child: Text(
                                '+126 Colleges',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 9
                              ),
                            )
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: height/50,
                            ),
                            Text(
                              'Top Colleges          ',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: height/40,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                            SizedBox(
                              height: height/75,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Searh through thousands of\n'
                                    'accredited colleges and universities\n'
                                    'online to find the right one for you.\n'
                                    'Apply in 3 min, and connect with your\n'
                                    'future.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:height/75,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('photos/Slide1.JPG'),
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                      ),

                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width/15,bottom: height/100,top: height/100),
                child: Container(
                  height: height/6,
                  width: width*0.85,
                  child: Stack(
                    children: [
                      Container(
                          alignment: Alignment.bottomRight,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Text(
                            '+106 Schools',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 9
                            ),
                          )
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: height/50,
                          ),
                          Text(
                            'Top Schools               ',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: height/40,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          SizedBox(
                            height: height/75,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              'Searching for the best school for you\n'
                                  'just got easier! With our Advanced\n'
                                  'School Search, you can easily filter out\n'
                                  'the schools that are fit for you.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:height/70,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('photos/Slide2.JPG'),
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),

                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width/15,top: height/100,bottom: height/15),
                child: Container(
                  height: height/6,
                  width: width*0.85,
                  child: Stack(
                    children: [
                      Container(
                          alignment: Alignment.bottomRight,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Text(
                            '+16 Exams',
                            style: TextStyle(
                              color: Colors.black,
                                fontSize: 10,
                            ),
                          )
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: height/50,
                          ),
                          Text(
                            'Exams                        ',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: height/40,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          SizedBox(
                            height: height/75,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              'Find an end to end information about \n'
                                  'the exams that are happening in India',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:height/70,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('photos/Slide3.jpg'),
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),

                  ),
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

enum choose{btech,barch,pharmacy,law,management}
choose?_choose=choose.btech;
class select extends StatefulWidget {
  const select({Key? key}) : super(key: key);

  @override
  State<select> createState() => _selectState();
}

class _selectState extends State<select> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height/2.3,
        decoration: BoxDecoration(
          color: Colors.white,
         borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ListTile(
              leading: Text('Sort by',style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/50),),
              trailing: Icon(Icons.close,size: height/28),
            ),
            SizedBox(
              height:1,
              width: width/1.1,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.grey,
                ),
              ),
            ),
            GestureDetector(
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage2()),);
                  },
                leading: new Image(
                  image: new AssetImage("photos/college_icon/1.jpg"),
                  color: null,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                ),
                title: Text('Bachelor of Technology'),
                trailing: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage2()),
                    );},
                  child: Radio<choose>(
                      value:choose.btech,
                      groupValue: _choose,
                      onChanged: (value){
                        setState(() {
                          _choose=value;
                        });
                      }
                  ),
                ),
              ),
            ),
            ListTile(
              leading: new Image(
                image: new AssetImage("photos/college_icon/2.jpg"),
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
              title: Text('Bachelor of Architecture'),
              trailing: Radio<choose>(
                  value:choose.barch,
                  groupValue: _choose,
                  onChanged: (value){
                    setState(() {
                      _choose=value;
                    });
                  }
              ),
            ),
            ListTile(
              leading: new Image(
                image: new AssetImage("photos/college_icon/3.jpg"),
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
              title: Text('Pharmacy'),
              trailing: Radio<choose>(
                  value:choose.pharmacy,
                  groupValue: _choose,
                  onChanged: (value){
                    setState(() {
                      _choose=value;
                    });
                  }
              ),
            ),
            ListTile(
              leading: new Image(
                image: new AssetImage("photos/college_icon/4.jpg"),
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
              title: Text('Law'),
              trailing: Radio<choose>(
                  value:choose.law,
                  groupValue: _choose,
                  onChanged: (value){
                    setState(() {
                      _choose=value;
                    });
                  }
              ),
            ),
            ListTile(
              leading: new Image(
                image: new AssetImage("photos/college_icon/5.jpg"),
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
              title: Text('Management'),
              trailing: Radio<choose>(
                  value:choose.management,
                  groupValue: _choose,
                  onChanged: (value){
                    setState(() {
                      _choose=value;
                    });
                  }
              ),
            ),


          ],
        )
    );
  }
}


