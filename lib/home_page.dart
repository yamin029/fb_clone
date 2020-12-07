import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.camera_alt,
                    size: 30,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Stories',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text('See Archive'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 220,
                        child: ListView(
                          padding: EdgeInsets.all(15),
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          children: [
                            MakeStory(
                              user_story_image:
                                  AssetImage('images/story/story-1.jpg'),
                              user_profile_image:
                                  AssetImage('images/aatik-tasneem.jpg'),
                              user_name: 'Antik tasnees',
                            ),
                            MakeStory(
                              user_story_image:
                                  AssetImage('images/story/story-3.jpg'),
                              user_profile_image:
                                  AssetImage('images/aiony-haust.jpg'),
                              user_name: 'Aiony haust',
                            ),
                            MakeStory(
                              user_story_image:
                                  AssetImage('images/story/story-4.jpg'),
                              user_profile_image:
                                  AssetImage('images/averie-woodard.jpg'),
                              user_name: 'Averie woodard',
                            ),
                            MakeStory(
                              user_story_image:
                                  AssetImage('images/story/story-4.jpg'),
                              user_profile_image:
                                  AssetImage('images/averie-woodard.jpg'),
                              user_name: 'Averie woodard',
                            ),
                            MakeStory(
                              user_story_image:
                                  AssetImage('images/story/story-4.jpg'),
                              user_profile_image:
                                  AssetImage('images/averie-woodard.jpg'),
                              user_name: 'Averie woodard',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MakePost(
                        time: '1 hr ago',
                        post:
                            'My goal at the end is to eliminate the shadow at the top of the days of the week.',
                        user_profile_image:
                            AssetImage('images/aiony-haust.jpg'),
                        post_image: AssetImage('images/story/story-3.jpg'),
                        name: 'Aiony haust',
                      ),
                      MakePost(
                        time: '30 min ago',
                        post:
                            'My goal at the end is to eliminate the shadow at the top of the days of the week.',
                        user_profile_image:
                            AssetImage('images/averie-woodard.jpg'),
                        post_image: AssetImage('images/story/story-4.jpg'),
                        name: 'Averie woodard',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MakePost extends StatelessWidget {
  final String name;
  final String post;
  final String time;
  final AssetImage user_profile_image;
  final AssetImage post_image;
  MakePost(
      {this.post,
      this.user_profile_image,
      this.post_image,
      this.time,
      this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.white),
                      image: DecorationImage(
                        image: user_profile_image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '1 hr ago',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.more_horiz,
                size: 30,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            post,
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.black87),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: post_image,
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                        border: Border.all(color: Colors.white)),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-10, 0),
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(color: Colors.white)),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '2.5k',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '400 comments',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //margin: EdgeInsets.only(right: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up_alt,
                        color: Colors.blue,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Center(
                        child: Text(
                          'like',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(right: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Icon(
                          Icons.comment,
                          size: 15,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Center(
                          child: Text(
                            'comment',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  //alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        size: 15,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Center(
                        child: Text(
                          'share',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MakeStory extends StatelessWidget {
  final String user_name;
  final AssetImage user_profile_image;
  final AssetImage user_story_image;
  MakeStory({this.user_name, this.user_profile_image, this.user_story_image});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(10, 10),
              spreadRadius: 0.0, //(x,y)
              blurRadius: 5,
            )
          ],
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: user_story_image,
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.3),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.white),
                  image: DecorationImage(
                    image: user_profile_image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                user_name,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
