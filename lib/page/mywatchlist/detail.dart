import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/utils/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWatchlistDetail extends StatefulWidget {
  const MyWatchlistDetail({super.key});

  @override
  State<MyWatchlistDetail> createState() => _MyWatchlistDetailState();
}

class _MyWatchlistDetailState extends State<MyWatchlistDetail> {
  @override
  Widget build(BuildContext context) {
    final MyWatchlist watch =
        ModalRoute.of(context)!.settings.arguments as MyWatchlist;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail '),
      ),
      drawer: drawerBuild(context),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: Text(
                watch.title,
                style: GoogleFonts.poppins(
                  color: Colors.deepPurple,
                  textStyle: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                )
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Text(
                  "Release Date: ",
                  style: GoogleFonts.poppins(
                    color: Colors.pink.shade500,
                    textStyle: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  )
                ),
                Text(
                  watch.releaseDate.toString(),
                  style: GoogleFonts.poppins(
                    color: Colors.pink.shade500,
                    textStyle: const TextStyle(
                    fontSize: 18.0,
                  ),
                  )
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Rating: ",
                  style: GoogleFonts.poppins(
                    color: Colors.pink.shade500,
                    textStyle: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  )
                ),
                Text(
                  "${watch.rating}/5.0",
                  style: GoogleFonts.poppins(
                    color: Colors.pink.shade500,
                    textStyle: const TextStyle(
                    fontSize: 18.0,
                  ),
                  )
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Status: ",
                  style: GoogleFonts.poppins(
                    color: Colors.pink.shade500,
                    textStyle: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  )
                ),
                Text(
                  watch.watched ? "Watched" : "Not Watched",
                  style: GoogleFonts.poppins(
                    color: Colors.pink.shade500,
                    textStyle: const TextStyle(
                    fontSize: 18.0,
                  ),
                  )
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Review: ",
                  style: GoogleFonts.poppins(
                    color: Colors.pink.shade500,
                    textStyle: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  )
                ),
                Text(
                  watch.review,
                  style: GoogleFonts.poppins(
                    color: Colors.pink.shade500,
                    textStyle: const TextStyle(
                    fontSize: 18.0,
                  ),
                  )
                ),
              ],
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.pink.shade100
                ),
                child: Text(
                  "Back",
                  style: GoogleFonts.poppins(
                    color: Colors.deepPurpleAccent,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}