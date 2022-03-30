import 'package:flutter/material.dart';
import 'package:tpq_id/screen/alquran_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TPQ.ID'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 650) {
            return WebApp();
          } else {
            return MobileApp();
          }
        },
      ),
    );
  }
}

class MobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Container(
                      child: Image.asset(
                        'asset/alquran.jpg',
                        width: 200,
                        height: 230,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(255, 0, 38, 255),
                              width: 3)),
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: Image.asset(
                        'asset/solat.jpg',
                        width: 160,
                        height: 230,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(255, 0, 255, 136),
                              width: 3)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  SizedBox(width: 15),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            'asset/jadwal.png',
                            width: 100,
                            height: 100,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 37, 106, 31),
                                  width: 4)),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 13),
                          child: Image.asset(
                            'asset/mesjid.png',
                            width: 100,
                            height: 100,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 255, 204, 0),
                                  width: 4)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 0),
                  Container(
                    child: Image.asset(
                      'asset/doa.jpg',
                      width: 233,
                      height: 215,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Color.fromARGB(255, 0, 208, 255), width: 4)),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        '--------------         -------------------------------------',
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Taman Pendidikan Al-Quran',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '------------------------------------------------------------',
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: ElevatedButton(
                        child: Text(
                          'Start Learn',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Alquran();
                          }));
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              child: Image.asset(
                                'asset/alquran.jpg',
                                width: 200,
                                height: 230,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 0, 38, 255),
                                      width: 3)),
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              'asset/jadwal.png',
                              width: 100,
                              height: 100,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromARGB(255, 37, 106, 31),
                                width: 4,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 13),
                            child: Image.asset(
                              'asset/mesjid.png',
                              width: 100,
                              height: 100,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromARGB(255, 255, 204, 0),
                                width: 4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                child: Image.asset(
                                  'asset/solat.jpg',
                                  width: 160,
                                  height: 230,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 0, 255, 136),
                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                'asset/doa.jpg',
                                width: 233,
                                height: 215,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color.fromARGB(255, 0, 208, 255),
                                  width: 4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          '--------------         -------------------------------------',
                          style: TextStyle(fontSize: 23),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Taman Pendidikan Al-Quran',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '------------------------------------------------------------',
                          style: TextStyle(fontSize: 23),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: ElevatedButton(
                          child: Text(
                            'Start Learn',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Alquran();
                            }));
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
