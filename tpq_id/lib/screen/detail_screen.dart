import 'package:flutter/material.dart';
import 'package:tpq_id/data_item/alquran_item.dart';

var inforTextStyale_bold = TextStyle(fontFamily: 'Merriweather');

class DetailScreen extends StatelessWidget {
  final AlquranData place;

  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 900) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final AlquranData place;
  const DetailMobilePage({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Center(
                    heightFactor: 1,
                    child: Container(
                      width: 500,
                      height: 200,
                      color: Colors.green,
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 8),
                            Text(
                              place.arab,
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 80.0,
                              ),
                            ),
                            Text(place.surah,
                                style: TextStyle(
                                    fontFamily: 'Fjalla One',
                                    fontStyle: FontStyle.italic))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          FavoriteButton(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Card(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          width: 110,
                          height: 70,
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Artinya',
                                style: inforTextStyale_bold,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                place.artinya,
                                style: TextStyle(
                                    fontFamily: 'Merriweather-Regular',
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          width: 110,
                          height: 70,
                          child: Column(
                            children: <Widget>[
                              Text('Nomor Surah', style: inforTextStyale_bold),
                              SizedBox(height: 8.0),
                              Text(
                                place.number.toString(),
                                style: TextStyle(
                                    fontFamily: 'Merriweather-Regular',
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          width: 110,
                          height: 70,
                          child: Column(
                            children: <Widget>[
                              Text('Tempat', style: inforTextStyale_bold),
                              SizedBox(height: 8.0),
                              Text(
                                place.tempat,
                                style: TextStyle(
                                    fontFamily: 'Merriweather-Regular',
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  place.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              //Audio()
            ],
          ),
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final AlquranData place;
  const DetailWebPage({required this.place});

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 64,
          ),
          child: Center(
            child: Container(
              width: 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TPQ.ID',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Center(
                              heightFactor: 1,
                              child: Container(
                                width: 500,
                                height: 200,
                                color: Colors.green,
                                child: Center(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 8),
                                      Text(
                                        widget.place.arab,
                                        style: TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: 80.0,
                                        ),
                                      ),
                                      Text(widget.place.surah,
                                          style: TextStyle(
                                              fontFamily: 'Fjalla One',
                                              fontStyle: FontStyle.italic)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Container(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                widget.place.description,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 32),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Card(
                              child: Padding(
                                padding: EdgeInsets.only(top: 25),
                                child: Container(
                                  width: 130,
                                  height: 70,
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Artinya',
                                        style: inforTextStyale_bold,
                                      ),
                                      SizedBox(height: 8.0),
                                      Text(
                                        widget.place.artinya,
                                        style: TextStyle(
                                            fontFamily: 'Merriweather-Regular',
                                            fontStyle: FontStyle.normal),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              child: Padding(
                                padding: EdgeInsets.only(top: 25),
                                child: Container(
                                  width: 100,
                                  height: 70,
                                  child: Column(
                                    children: <Widget>[
                                      Text('Nomor Surah',
                                          style: inforTextStyale_bold),
                                      SizedBox(height: 8.0),
                                      Text(widget.place.number.toString(),
                                          style: TextStyle(
                                              fontFamily:
                                                  'Merriweather-Regular',
                                              fontStyle: FontStyle.normal)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              child: Padding(
                                padding: EdgeInsets.only(top: 25),
                                child: Container(
                                  width: 100,
                                  height: 70,
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Tempat',
                                        style: inforTextStyale_bold,
                                      ),
                                      SizedBox(height: 8.0),
                                      Text(widget.place.tempat,
                                          style: TextStyle(
                                              fontFamily:
                                                  'Merriweather-Regular',
                                              fontStyle: FontStyle.normal)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
