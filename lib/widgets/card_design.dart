import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../modals/note.dart';

class CardDesign extends StatelessWidget {
  Note note;
  Function _deleteNote;

  Color cardColor;

  CardDesign(this.note, this._deleteNote, this.cardColor);

  //List<Color> colorList=[const Color(0xFFD3CA00),const Color(0xFFF69700)];

  @override
  Widget build(BuildContext context) {
    var screenHeight = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top);
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      height: screenHeight * 0.65,

      width: double.infinity,
      child: InkWell(
        onTap: () {},
        child: Card(
          elevation: 0,
          margin:  EdgeInsets.only(bottom: screenHeight*0.009),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenHeight*0.035)),
          color: Color(0xFF94c2ff),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenHeight * 0.03, vertical: screenHeight * 0.04),
            child: Stack(
             // alignment: Alignment.center,
                children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    note.title.isEmpty ? "No title" : note.title,
                    style: GoogleFonts.montserrat(
                        fontSize: screenHeight * 0.046,
                        fontWeight: FontWeight.w400),
                    overflow: TextOverflow.fade,
                    softWrap: true,
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: screenHeight*0.03,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFD6EBF9),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenHeight * 0.015,
                          vertical: screenHeight * 0.002),
                      child: Text(
                        'King kong',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: screenHeight * 0.023),
                      ),
                    ),
                  ),
                  Divider(
                    height: screenHeight * 0.06,
                    thickness: screenHeight * 0.001,
                    color: Colors.black,
                  ),
                  Text("hishdi"),
                  Divider(
                    height: screenHeight * 0.06,
                    thickness: screenHeight * 0.001,
                    color: Colors.black,

                  ),
                  Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                    maxLines:9,
                  overflow: TextOverflow.fade,
                  softWrap: true,

                  style: GoogleFonts.ptSans(fontSize:screenHeight*0.027,height: screenHeight*0.0014 ,
                  color: Colors.grey.shade800),),
                ],
              ),
              Positioned(
                top: screenHeight * 0.48,
                //left: screenHeight * 0.05,
                //left: 0,
                right: 0,
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.share),
                      radius: screenHeight *0.03,
                      backgroundColor: Color(0xD9D6EBF9),
                    ),
                    SizedBox(
                      width: screenHeight * 0.02,
                    ),
                    CircleAvatar(
                      child: Icon(Icons.favorite_border),
                      radius: screenHeight *0.03,
                      backgroundColor: Color(0xD9D6EBF9),
                    ),
                    SizedBox(
                      width: screenHeight * 0.02,
                    ),
                    GestureDetector(
                      onTap: ()=>_deleteNote(note.id),
                      child: CircleAvatar(
                        child: Icon(Icons.delete_outline_rounded),
                        radius: screenHeight *0.03,
                        backgroundColor: Color(0xD9D6EBF9),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
