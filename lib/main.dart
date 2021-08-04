import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget();

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.call),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.video_call,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                    ),
                  )
                ],
                backgroundColor: Colors.black,
                pinned: _pinned,
                snap: _snap,
                floating: _floating,
                expandedHeight: 300,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'Contact info: Ryan',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  background: Image(
                    image: AssetImage('assets/pic.jpg'),
                    fit: BoxFit.cover,
                  ),
                )),
            SliverToBoxAdapter(
              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      color: Colors.grey[700],
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Info",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.blue[100],
                              ),
                            ),
                            Text(
                              "9831609274",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Mobile",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey[700],
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "9831609274",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Mobile",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Switch(
                            activeColor: Colors.black,
                            onChanged: (bool val) {
                              setState(() {
                                _pinned = val;
                              });
                            },
                            value: _pinned,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    color: Colors.black,
                    height: 100.0,
                    child: Center(
                      child: Text(" "),
                    ),
                  );
                },
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
