import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flutter_task/feed_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.spaceGroteskTextTheme(),
        scaffoldBackgroundColor: const Color.fromRGBO(248, 247, 248, 1),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          title: Container(),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Color.fromRGBO(182, 147, 250, 1),
                labelColor: Color.fromRGBO(38, 45, 53, 1),
                unselectedLabelColor: Color.fromRGBO(185, 190, 204, 1),
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                tabs: [
                  Tab(text: 'Friends'),
                  Tab(text: 'World'),
                  Tab(text: 'Celebrities'),
                  Tab(text: 'Feed'),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Friends'),
            ),
            Center(
              child: Text('World'),
            ),
            Center(
              child: Text('Celebrities'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: FeedView(),
            )
          ],
        ),
      ),
    );
  }
}
