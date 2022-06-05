import 'package:flutter/material.dart';
import 'package:flutter_application_1/twitter/widget/widget_twitter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:twitter/widgets/builder_of_tweets.dart';

class Twitter extends StatelessWidget {
  Twitter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // backgroundColor: Colors.white,
          title: const Icon(FontAwesomeIcons.twitter),
          leading: Container(
            margin: const EdgeInsets.all(7.0),
            child: const Icon(FontAwesomeIcons.bars)
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.venusMars
                ),
              ),
            ),
          ],
        ),
        body: TweetBuilder(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: const Icon(FontAwesomeIcons.leaf),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          onTap: (int i) {},
          items: const [
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(FontAwesomeIcons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(FontAwesomeIcons.search),
              label: '',
            ),
            
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bell),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.envelope),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}