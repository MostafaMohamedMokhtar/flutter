import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/choice.dart';
import 'package:transparent_image/transparent_image.dart';

main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppImplementation();
  }
}

class MyAppImplementation extends State<MyApp> {
  int counter = 0;
  List<String> courses = ['Dart', 'Flutter', 'Ios', 'Android', 'React'];
  String selectedCourse = 'Dart';
  var choices = <Choice>[
    Choice(title: 'car', icon: Icons.directions_car, id: 0),
    Choice(title: 'bike', icon: Icons.directions_bike, id: 1),
    Choice(title: 'boat', icon: Icons.directions_boat, id: 2),
    Choice(title: 'Bus', icon: Icons.directions_bus, id: 3),
    Choice(title: 'Train', icon: Icons.directions_railway, id: 4),
    Choice(title: 'Walk', icon: Icons.directions_walk, id: 5),
  ];
  int selectedIndex = 0;

  BuildContext context;

  @override
  Widget build(BuildContext context) {
    MaterialApp materialApp = new MaterialApp();
    materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(10.0),
                //margin: EdgeInsets.all(1.0),
                decoration: BoxDecoration(color: Colors.orange),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      // margin: EdgeInsets.all(10),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/unnamed.png'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mostafa',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'mokhtarmostafa13@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.green),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                onTap: () {
                  print('Home clicked');
                },
              ),
              ListTile(
                title: Text(
                  'Car',
                  style: TextStyle(color: Colors.green),
                ),
                leading: Icon(
                  Icons.directions_car,
                  color: Colors.red,
                ),
                onTap: () {
                  print('Car clicked');
                },
              ),
              ListTile(
                title: Text(
                  'Bus',
                  style: TextStyle(color: Colors.green),
                ),
                leading: Icon(
                  Icons.directions_bus,
                  color: Colors.red,
                ),
                onTap: () {
                  print('Bus clicked');
                },
              ),
              Divider(
                height: 20,
                color: Colors.orange,
              ),
              ListTile(
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.green),
                ),
                leading: Icon(
                  Icons.info_outline,
                  color: Colors.red,
                ),
                onTap: () {
                  print('About clicked');
                },
              ),
              ListTile(
                title: Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.green),
                ),
                leading: Icon(
                  Icons.call,
                  color: Colors.red,
                ),
                onTap: () {
                  print('contact us  clicked');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Hello Flutter',
            style: TextStyle(
              fontFamily: 'MyPlayfair',
              letterSpacing: 2,
            ),
          ),
          backgroundColor: Colors.orange,
          actions: [
            IconButton(
              icon: Icon(choices[0].icon),
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(choices[1].icon),
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(choices[2].icon),
              onPressed: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
            PopupMenuButton(
              itemBuilder: (context) {
                return choices.skip(3).map((choice) {
                  return PopupMenuItem(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              },
              onSelected: (choice) {
                setState(() {
                  selectedIndex = choice.id;
                });
              },
              //icon: Icon(Icons.settings),
            ),
          ],
        ),
        body: Center(
          child: Icon(
            choices[selectedIndex].icon,
            size: 100,
            color: Colors.orange,
          ),

          /*Column(
            children: [
              SizedBox(height: 50,),
              Text('you selected $selectedCourse'),
              ButtonBar(
                children: [
                  RaisedButton(child: Text('click'),onPressed: (){},),
                  FlatButton(child: Text('select'), onPressed: (){},),
                  IconButton(icon: Icon(Icons.save),onPressed: (){},)
                ],
              ),
              SizedBox(height: 100,),
              DropdownButton(
                items:courses.map((course){
                  return DropdownMenuItem(
                    value: course ,
                    child: Text(course),
                  );
              }).toList(),
                onChanged: (value){
                  setState(() {
                    selectedCourse = value ;
                  });
                },
                value: selectedCourse ,
              )
              /*Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 100,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                size: 100,
                color: Colors.yellow,
              ),
              SizedBox(
                height: 150,
              ),
              Icon(
                Icons.star,
                size: 100,
                color: Colors.yellow,
              ),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.call),
                label: Text('call me'),
                splashColor: Colors.yellow,
                color: Colors.blue,
              ),
            ],
          ),*/
              /*Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 100,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                size: 100,
                color: Colors.yellow,
              ),
              SizedBox(
                height: 150,
              ),
              Icon(
                Icons.star,
                size: 100,
                color: Colors.yellow,
              ),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.call),
                label: Text('call me'),
                splashColor: Colors.yellow,
                color: Colors.blue,
              ),
            ],
          ),*/
            ],
          ), */
          /*Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 100,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star,
                size: 100,
                color: Colors.yellow,
              ),
              SizedBox(
                height: 150,
              ),
              Icon(
                Icons.star,
                size: 100,
                color: Colors.yellow,
              ),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.call),
                label: Text('call me'),
                splashColor: Colors.yellow,
                color: Colors.blue,
              ),
            ],
          ),*/
          /*CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      ListTile(title: Text(' first name '),),
                      ListTile(title: Text(' second name '),),
                      ListTile(title: Text(' third name '),),
                      ListTile(title: Text(' fourth name '),),
                      ListTile(title: Text(' fifth name '),),
                      ListTile(title: Text(' sixth name '),),
                      ListTile(title: Text(' seventh name '),),
                      ListTile(title: Text(' eighth name '),),
                      ListTile(title: Text(' ninth name '),),
                      ListTile(title: Text(' tenth name '),),
                    ]
                  ),
                ),
                SliverFillRemaining(
                    child: Container(
                      color: Colors.yellow,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlutterLogo(size: 300,),
                          Text('this is the best word i had ever seen before')
                        ],
                      ),
                    ),
                    hasScrollBody: false,
                  ),
              ],
            )*/
          /*Material(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(
                  color: Colors.blue,
                      width: 3
                ),
              ),
              color: Colors.yellowAccent,
              child: Container(
                width: 300,
                height: 300,
              ),

        )*/
          /* Container(
            width: 300,
            height:300,
            child: Center(child: Text('hi everybody')),
            decoration: BoxDecoration(color: Colors.yellowAccent ,
            gradient: LinearGradient(colors: [Colors.red , Colors.blue]),
            border: Border.all(color: Colors.black , width: 3),
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.all(Radius.circular(15))),
            foregroundDecoration: BoxDecoration(color: Colors.red.withOpacity(0.5)),
          ),*/
        ),
        /*ConstrainedBox(
          constraints: BoxConstraints.expand(width: 300 , height: 200),
          child: Card(
            child: Text('Hello flutter'),
            color: Colors.blue[500],
          ),
        ),*/
        /*Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.red),
              ),
              flex: 3,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.green),
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.blue),
              ),
              flex: 1,
            )
          ],
        ),*/
        /*Stack(
          fit: StackFit.expand,
          children: [
            Material(
              color: Colors.yellow,
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Icon(
                Icons.star,
                size: 100,
                color: Colors.red,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 50,
              child: Icon(
                Icons.call,
                size: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),*/
        /*Center(
          child:  IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget> [
                RaisedButton(
                  child: Text('short'),
                  onPressed: (){},
                ),
                RaisedButton(
                  child: Text('more than first'),
                  onPressed: (){},
                ),
                RaisedButton(
                  child: Text('this is the biggest one '),
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ),*/

        /*Row(
         /* mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star ,
            size: 60,
            color: Colors.red,) ,
            Icon(Icons.star ,
              size: 60,
              color: Colors.red,),
            Icon(Icons.star ,
              size: 60,
              color: Colors.red,)
          ],*/
         crossAxisAlignment: CrossAxisAlignment.baseline,
         textBaseline: TextBaseline.alphabetic,
         children: [
           Text(
             'Hello',
             style: Theme.of(context).textTheme.headline3,
           ),
           Text(
             'flutter developers',
             style: Theme.of(context).textTheme.bodyText1,
           )
         ],
        ), */
        /*Center(
          child: CachedNetworkImage(
            imageUrl:
                'https://images.freeimages.com/images/large-previews/6b2/hourglass-1543596.jpg',
            placeholder: (context, url) =>
                Image.asset('assets/images/loader.gif'),
            errorWidget: (context, url, error) => Icon(
              Icons.error,
              size: 100,
              color: Colors.red,
            ),
          ),
        ), */
        /*Center(
          child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loader.gif',
              image: 'https://images.freeimages.com/images/large-previews/9d6/philippine-coins-1483943.jpg'),
        ) , */

        /* Stack(
          children: <Widget> [
            Center(child: CircularProgressIndicator(),),
            Center(
              child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: 'https://images.freeimages.com/images/large-previews/9d6/philippine-coins-1483943.jpg'),)
          ],
        ),*/
        /*Center(
          child: Image(
            image: AssetImage('assets/images/unnamed.png'),
          ),
        ) , */
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.check),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.black,
          onPressed: () => print('you clicked me '),
          // mini: true,
          //elevation: 0,
          /*shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            side: BorderSide(color: Colors.black , width: 2)
          ),*/
        ),
      ),
    );
    return materialApp;
  }
}
