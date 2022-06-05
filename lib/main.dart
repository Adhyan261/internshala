import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp( MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
    home: HOME(),
  ));
}

class HOME extends StatefulWidget {
  const HOME({Key? key}) : super(key: key);

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 0.1*MediaQuery.of(context).size.height),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xFFE3CB73),
                  ),
                ),
                height: 300,
                width: double.infinity,

                child: GridTile(
                  child: Image.asset('images/clan1.jpg',
                    fit: BoxFit.cover,
                    height: 300,
                    width: double.infinity,
                  ),
                  footer: Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    color: Colors.black45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget>[
                        Text('Clan name : Lorem Ipsum',style:
                        GoogleFonts.nunito(
                          fontSize: 20,
                        ),),
                        SizedBox(height: 25,),
                        Text('28 memebers, 5 online',style:
                        GoogleFonts.nunito(
                          fontSize: 20,
                        ),)
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: divider()),

              Padding(
                padding: EdgeInsets.only(left:10),
                child: Align(
                  alignment: Alignment.centerLeft,
                    child: header(text:'Achievements',color: Color(0xFFE3CB73),),),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Table(
                  columnWidths: {
                    0:FlexColumnWidth(2),
                    1:FlexColumnWidth(1),
                  },
                  children: [
                    TableRow(
                      children:[
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: header(text:'Current League',color: Color(0xFFEC407A))),
                        Container(
                          height: 70,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset('images/shield.jpg',
                            fit: BoxFit.contain,),
                          ),
                        ),
                      ]
                    ),

                    TableRow(
                        children:[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child:  header(text:'League Ranking',color: Color(0xFFEC407A))
                          ),

                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text('11th', style: GoogleFonts.nunito(fontSize: 30, color: Color(0xFFE3CB73),)),
                          ),
                        ]
                    ),

                    TableRow(
                        children:[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child:  header(text:'Experience',color: Color(0xFFEC407A))
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text('2000 xp', style: GoogleFonts.nunito(fontSize: 25, color: Color(0xFFE3CB73),)),
                          ),
                        ]
                    ),

                    TableRow(
                        children:[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0,10),
                            child:  header(text:'# of wins',color: Color(0xFFEC407A))
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text('3', style: TextStyle(fontSize: 25, color: Color(0xFFE3CB73),)),
                          ),
                        ]
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: divider(),),

              Padding(
                padding: const EdgeInsets.all(10),
                child: header(text:'Past featured performances',color:Color(0xFFE3CB73)),
              ),

              Table(
                columnWidths: {
                  0:FlexColumnWidth(1),
                  1:FlexColumnWidth(1),
                },
                children: [
                  TableRow(
                    children:[
                      Container(
                        padding : EdgeInsets.all(10),
                        height: 120,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('images/pic.jpeg',
                            fit: BoxFit.contain,),
                        ),
                      ),
                      table_cell_performances(text:'Priya in Internaional debating league'),
                    ],
                  ),

                  TableRow(
                      children:[
                        Container(
                          padding : EdgeInsets.all(10),
                          height: 120,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset('images/pic.jpeg',
                              fit: BoxFit.contain,),
                          ),
                        ),
                        table_cell_performances(text:'Akshay in global quizzing final'),
                     ],
                  ),
                ],
              ),

              see_more(),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child:divider()),

              Padding(
                padding: const EdgeInsets.all(10),
                child: header(text:'Live Clan activities on platform',color:Color(0xFFE3CB73)),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: image_activities(text:'Live trading Championship'),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: image_activities(text:'Treasure hunt'),
              ),

              see_more(),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Divider(
                  color: Colors.white,
                  thickness: 3,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: header(text:'Clan discussions',color:Color(0xFFE3CB73)),
              ),

              Padding(
                padding:EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: discussion(),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: discussion(),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: discussion(),
              ),

              see_more(),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: divider()),

              Padding(
                padding: const EdgeInsets.all(10),
                child:header(text:'Clan Members',color:Color(0xFFE3CB73)),
              ),

              Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/pic.jpeg'),
                      radius: 20,
                    ),
                    title: Text('Lorem ipsum - Clan head', style: GoogleFonts.nunito(color: Color(0xFFEC407A),)),
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/pic.jpeg'),
                      radius: 20,
                    ),
                    title: Text('Lorem ipsum - Debating Sensei', style: GoogleFonts.nunito(color: Color(0xFFEC407A),)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.star),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.trophy),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.child),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(backgroundImage: AssetImage('images/pic.jpeg'),radius: 15,),
            label: '',
          ),
        ],
      ),
    );
  }
}

