import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/utils/drawer.dart';
import 'package:counter_7/utils/fetch_mywatchlist.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({Key? key}) : super(key: key);

  @override
  State<MyWatchlistPage> createState() => _MyWatchlistPageState();
}

class _MyWatchlistPageState extends State<MyWatchlistPage> {
  final Future<List<MyWatchlist>> future = fetchMyWatchlist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: drawerBuild(context),
        body: FutureBuilder<List<MyWatchlist>>(
          future: future,
          builder: (context, AsyncSnapshot<List<MyWatchlist>> snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Oh no! Tidak ada watch list :(",
                      style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => InkWell(
                    // make anything clickable
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/mywatchlist-detail',
                        arguments: snapshot.data![index],
                      );
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 207, 171, 231),
                          borderRadius: BorderRadius.circular(17.0),
                          border: Border.all(
                            color: snapshot.data![index].watched
                                ? Colors.pink.shade300
                                : Color.fromARGB(255, 212, 68, 57),
                            width: 4.0,
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                snapshot.data![index].title,
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Checkbox(
                                value: snapshot.data![index].watched,
                                onChanged: (bool? newValue) => {
                                  setState(
                                    () => {
                                      snapshot.data![index].watched = newValue!
                                    },
                                  )
                                },
                              ),
                            ])),
                      ));
              }
            }
          },
        ));
  }
}
