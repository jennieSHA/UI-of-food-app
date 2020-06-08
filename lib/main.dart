import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//my imports
import 'package:foodapp/Screens/UploadDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primaryColor: Colors.red,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 32,
            color: Colors.black,
          ),
          bodyText2: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    'assets/images/plate1.jpg',
    'assets/images/plate2.jpg',
    'assets/images/plate3.jpg',
    'assets/images/plate4.jpg',
    'assets/images/plate1.jpg',
    'assets/images/plate2.jpg',
    'assets/images/plate3.jpg',
    'assets/images/plate4.jpg',
    'assets/images/plate1.jpg',
    'assets/images/plate2.jpg',
    'assets/images/plate3.jpg',
    'assets/images/plate4.jpg',
    'assets/images/plate1.jpg',
    'assets/images/plate2.jpg',
    'assets/images/plate3.jpg',
    'assets/images/plate4.jpg',
  ];
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            title: Text(
              'Search',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_upload,
            ),
            title: Text(
              'Upload',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            title: Text(
              'Favourite',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.05,
          left: MediaQuery.of(context).size.width / 25,
          right: MediaQuery.of(context).size.width / 25,
        ),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Upload',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 0.0,
                  right: 0.0,
                ),
                child: FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.dashboard),
                  label: Text(
                    'Collage',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.72,
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0,
                      ),
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UploadDetails())),
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.685,
                  child: Container(
                    color: Colors.grey[200],
                    child: ToggleButtons(
                      fillColor: Colors.grey[200],
                      color: Colors.black,
                      selectedColor: Theme.of(context).primaryColor,
                      renderBorder: false,
                      constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width * 0.31,
                      ),
                      children: <Widget>[
                        Text('Gallery'),
                        Text('Photo'),
                        Text('Video'),
                      ],
                      isSelected: isSelected,
                      onPressed: (int index) {
                        setState(() {
                          isSelected[index] = !isSelected[index];
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
