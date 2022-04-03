import 'package:flutter/material.dart';
import 'package:tpq_id/data_item/alquran_item.dart';
import 'package:tpq_id/screen/detail_screen.dart';

class Alquran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TPQ.ID'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 800) {
            return AlquranScreen();
          } else if (constraints.maxWidth <= 1200) {
            return AlquranScreenGrid(gridCount: 4);
          } else {
            return AlquranScreenGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class AlquranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final AlquranData place = alquranList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 18),
                    child: Card(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text(
                          place.arab,
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Surah Ke-${place.number.toString()}',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 10),
                        Text(place.tempat),
                        SizedBox(height: 10),
                        Text('Artinya : ${place.artinya}')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: alquranList.length,
    );
  }
}

class AlquranScreenGrid extends StatelessWidget {
  final int gridCount;

  AlquranScreenGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: alquranList.map((place) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(place: place);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Card(
                          color: Colors.greenAccent,
                          child: Center(
                            child: Text(
                              place.arab,
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Surah Ke-${place.number.toString()}',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(place.tempat),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Artinya : ${place.artinya}')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
