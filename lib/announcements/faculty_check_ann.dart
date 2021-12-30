import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/utils/drawer.dart';
import 'package:imsystem/utils/faculty_drawer.dart';
import '../models/announcementt.dart' as ann;

class FacultyAnnouncements extends StatefulWidget {
  var announcements = ann.announcementList;
  FacultyAnnouncements(this.announcements);

  @override
  State<FacultyAnnouncements> createState() => _FacultyAnnouncementsState();
}

class _FacultyAnnouncementsState extends State<FacultyAnnouncements> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: FacultyDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Announcements",
            style: GoogleFonts.josefinSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          toolbarHeight: 40,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ann.announcementList[index].title,
                          style: GoogleFonts.josefinSans(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ann.announcementList[index].description,
                          style: GoogleFonts.josefinSans(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          ann.announcementList[index].date,
                          style: GoogleFonts.josefinSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: ann.announcementList.length,
        ),
      ),
    );
  }
}
