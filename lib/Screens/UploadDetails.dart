import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadDetails extends StatefulWidget {
  @override
  _UploadDetailsState createState() => _UploadDetailsState();
}

class _UploadDetailsState extends State<UploadDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/plate1.jpg',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 1,
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.03,
                top: MediaQuery.of(context).size.height / 22,
                child: Icon(Icons.arrow_back),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.03,
                bottom: MediaQuery.of(context).size.height / 50,
                child: Material(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(color: Colors.white)),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.width * 0.09,
                    child: Center(
                      child: Icon(Icons.zoom_out_map),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: MediaQuery.of(context).size.width * 0.03,
                bottom: MediaQuery.of(context).size.height / 50,
                child: Row(
                  children: <Widget>[
                    Material(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(color: Colors.white)),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 35,
                        width: MediaQuery.of(context).size.width / 4,
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Tag People',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Material(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(color: Colors.white)),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 35,
                        width: MediaQuery.of(context).size.width / 3,
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Add Locations',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          TextFields(title: 'Title'),
          TextFields(title: 'Keyword/Hashtags'),
          TextFields(title: 'Description'),
          TextFields(title: 'Ingredients'),
          TextFields(title: 'Direction'),
          Align(
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              onPressed: () {},
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Text(
                'Post',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  TextFields({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.01,
                left: MediaQuery.of(context).size.width * 0.03,
              ),
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.01,
              left: MediaQuery.of(context).size.width * 0.03,
              right: MediaQuery.of(context).size.width * 0.03,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.11,
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
