import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class table_cell_performances extends StatelessWidget {
  final String text;
  table_cell_performances({required this.text});
  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Text(text,
          style: GoogleFonts.nunito(
            fontSize: 15,
            color: Color(0xFFEC407A),
          )),
    );
  }
}

class image_activities extends StatelessWidget {

  final String text;
  image_activities({required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset('images/back.jpg',
          fit: BoxFit.cover,
          height: 100,
          width: double.infinity,
        ),
        Center(child: Text(text,
          style: GoogleFonts.nunito(
            fontSize: 20,
          ),)),
      ],
    );
  }
}

class see_more extends StatelessWidget {
  const see_more({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('see more',
        style: GoogleFonts.nunito(
          color: Color(0xFFE3CB73),
        )));
  }
}

class discussion extends StatelessWidget {
  const discussion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('General thread',
            style: GoogleFonts.nunito(
              color: Color(0xFFEC407A),
              fontSize: 15,
            )),
        Text('15 unread messages',
            style:GoogleFonts.nunito(
              fontSize: 15,
            )),
      ],
    );
  }
}

class divider extends StatelessWidget {
  const divider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.white,
      thickness: 3,
    );
  }
}

class header extends StatelessWidget {

  final String text;
  final color;
  header({required this.text,required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style:GoogleFonts.nunito(
            fontSize: 20,
            color : color
        ));
  }
}
