import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 246, 252, 1),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromRGBO(82, 239, 145, 1),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Stack(
              alignment: AlignmentDirectional.center,
              children: const [
                Image(
                  image: AssetImage('assets/circle.png'),
                ),
                Image(
                  image: AssetImage('assets/smilyfrp.png'),
                ),
              ],
            ),
            label: 'Dashboard',
          ),
          const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/insight.png'),
            ),
            label: 'Insight',
          ),
          const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/discussion.png'),
            ),
            label: 'Discussion',
          ),
        ],
        currentIndex: 0,
      ),
      appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                )),
            Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Icon(
                  Icons.dehaze,
                  color: Colors.black,
                ))
          ],
          title: Wrap(
            children: const [
              Image(image: AssetImage('assets/earth.png')),
              SizedBox(
                width: 10,
              ),
              Text(
                'Welcome John Doe!',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Wrap(children: [
          Stack(
            alignment: AlignmentDirectional.centerEnd,
            children: [
              Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: SizedBox(
                      child: ListTile(
                    leading: const Image(image: AssetImage('assets/group.png')),
                    title: const Text(
                      "What's on your mind?",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Condell-Semibold',
                          color: Color.fromRGBO(17, 17, 17, 1)),
                    ),
                    subtitle: Wrap(children: const [
                      Text(
                        'Please share your thoughts and sentiments.',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Condell-Medium',
                            color: Color.fromRGBO(17, 17, 17, 1)),
                      ),
                      Text(
                        '9 Days since your last inputs',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Condell-Medium',
                            color: Color.fromRGBO(141, 141, 141, 1)),
                      )
                    ]),
                    isThreeLine: true,
                  ))),
              Container(
                  width: 40,
                  height: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/arrow.png'))))
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                      child: Text(
                    'Current Trending topics',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Condell-Semibold',
                        color: Color.fromRGBO(17, 17, 17, 1)),
                  )),
                  Expanded(
                      child: Text(
                    'Start a new discussion',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontFamily: 'Condell-Semibold',
                        color: Color.fromRGBO(110, 192, 128, 1)),
                  ))
                ],
              )),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(height: 100, width: 300, child: cardview()),
                SizedBox(height: 100, width: 300, child: cardview())
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'Start a new feed',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Condell-Semibold',
                  color: Color.fromRGBO(17, 17, 17, 1)),
            ),
          ),
          TextFormField(
            maxLines: 2,
            decoration: const InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              hintText: "What's on your mind?",
              hintStyle: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Condell-Medium',
                  color: Color.fromRGBO(141, 141, 141, 1)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                  flex: 1,
                  child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 5, bottom: 10),
                          child: Row(
                            children: const [
                              Image(image: AssetImage('assets/attach.png')),
                              Text(
                                ' Attach an image or video',
                                style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Condell-Medium',
                                    color: Color.fromRGBO(83, 83, 83, 1)),
                              ),
                            ],
                          )))),
              Flexible(
                  flex: 0,
                  child: Card(
                      // width: 250
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: const [
                              Image(image: AssetImage('assets/smiley.png')),
                              Text(
                                ' How do you feel about this?',
                                style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'Condell-Medium',
                                    color: Color.fromRGBO(83, 83, 83, 1)),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 13,
                              )
                            ],
                          )))),
              Flexible(
                flex: 0,
                child: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    color: const Color.fromRGBO(110, 192, 128, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Post',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Condell-Semibold',
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                      child: Text(
                    'Your latest feed',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Condell-Semibold',
                        color: Color.fromRGBO(17, 17, 17, 1)),
                  )),
                  Expanded(
                      child: Text(
                    'Explore more feeds',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontFamily: 'Condell-Semibold',
                        color: Color.fromRGBO(110, 192, 128, 1)),
                  ))
                ],
              )),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(height: 100, width: 300, child: cardview2()),
                SizedBox(height: 100, width: 300, child: cardview3())
              ],
            ),
          ),
          Wrap(
            children: [
              Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            color: Color.fromRGBO(110, 192, 128, 1),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 10, bottom: 10),
                                child: Text(
                                  'Create a new group',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Condell-Semibold',
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ))),
                        Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            color: Color.fromRGBO(110, 192, 128, 1),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 10, bottom: 10),
                                child: Text(
                                  'Join a new group',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Condell-Semibold',
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ))),
                      ],
                    )),
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                      child: Text(
                    'Search for mentors',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Condell-Semibold',
                        color: Color.fromRGBO(17, 17, 17, 1)),
                  )),
                ],
              )),
          Wrap(
            children: [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Expanded(
                                // height: 30,
                                //width: 200,
                                child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    //  borderSide: BorderSide.none,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                labelText: "Search for mentors.",
                                labelStyle: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Condell-Medium',
                                    color: Color.fromRGBO(141, 141, 141, 1)),
                              ),
                            )),
                            Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                color: Color.fromRGBO(110, 192, 128, 1),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 10,
                                        bottom: 10),
                                    child: Text(
                                      'Explore mentors',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: 'Condell-Semibold',
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1)),
                                    ))),
                          ],
                        )),
                  ))
            ],
          )
        ]),
      )),
    );
  }

  Widget cardview() {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Wrap(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 60,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/mask1.png'))),
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/mask2.png'))),
                      ),
                      Container(
                        height: 50,
                        width: 120,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/mask3.png'))),
                      )
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 10, left: 0),
                      child: Text(
                        'New Trends in ML',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Condell-Medium',
                            color: Color.fromRGBO(17, 17, 17, 1)),
                      )),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  child: Row(
                    children: const [
                      Text(
                        '12,548 Participants',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Condell-Semibold',
                            color: Color.fromRGBO(141, 141, 141, 1)),
                      ),
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          color: Color.fromRGBO(242, 238, 249, 1),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '25K New messages',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Condell-Medium',
                                  color: Color.fromRGBO(17, 17, 17, 1)),
                            ),
                          )),
                      Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          color: const Color.fromRGBO(110, 192, 128, 1),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  'Join Discussion',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Condell-Medium',
                                      color: Color.fromRGBO(17, 17, 17, 1)),
                                ),
                                Image(
                                    width: 20,
                                    image: AssetImage('assets/arowsmall.png'))
                              ],
                            ),
                          )),
                    ],
                  ))
            ],
          )),
    );
  }

  Widget cardview2() {
    return Card(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                  child: ListTile(
                leading: Image(image: AssetImage('assets/mask2.png')),
                title: Text(
                  'John Doe',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Condell-Semibold',
                      color: Color.fromRGBO(71, 71, 71, 1)),
                ),
                subtitle: Text(
                  'Art Director at XYZ Studios',
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Condell-Medium',
                      color: Color.fromRGBO(141, 141, 141, 1)),
                ),
              )),
              Icon(
                Icons.more_horiz,
                color: Color.fromRGBO(82, 239, 145, 1),
              ),
            ],
          ),
          Wrap(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Words of apreation from the client makes your Day',
                style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Condell-Medium',
                    color: Color.fromRGBO(17, 17, 17, 1)),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Wrap(
                        spacing: 10,
                        children: const [
                          Image(image: AssetImage('assets/heart.png')),
                          Text(
                            '2,145 Likes',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Condell-Medium',
                                color: Color.fromRGBO(141, 141, 141, 1)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Wrap(
                        spacing: 10,
                        children: const [
                          Image(image: AssetImage('assets/chat.png')),
                          Text(
                            '455 Comments',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Condell-Medium',
                                color: Color.fromRGBO(141, 141, 141, 1)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Wrap(
                        spacing: 10,
                        children: const [
                          Image(image: AssetImage('assets/share.png')),
                          Text(
                            'Share',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Condell-Medium',
                                color: Color.fromRGBO(141, 141, 141, 1)),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget cardview3() {
    return Card(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                  child: ListTile(
                leading: Image(image: AssetImage('assets/mask1.png')),
                title: Text(
                  'John Doe',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Condell-Semibold',
                      color: Color.fromRGBO(71, 71, 71, 1)),
                ),
                subtitle: Text(
                  'Art Director at XYZ Studios',
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Condell-Medium',
                      color: Color.fromRGBO(141, 141, 141, 1)),
                ),
              )),
              Icon(
                Icons.more_horiz,
                color: Color.fromRGBO(82, 239, 145, 1),
              ),
            ],
          ),
          Wrap(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Words of apreation from the client makes your Day',
                style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Condell-Medium',
                    color: Color.fromRGBO(17, 17, 17, 1)),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Wrap(
                        spacing: 10,
                        children: const [
                          Image(image: AssetImage('assets/heart.png')),
                          Text(
                            '2,145 Likes',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Condell-Medium',
                                color: Color.fromRGBO(141, 141, 141, 1)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Wrap(
                        spacing: 10,
                        children: const [
                          Image(image: AssetImage('assets/chat.png')),
                          Text(
                            '455 Comments',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Condell-Medium',
                                color: Color.fromRGBO(141, 141, 141, 1)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Wrap(
                        spacing: 10,
                        children: const [
                          Image(image: AssetImage('assets/share.png')),
                          Text(
                            'Share',
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Condell-Medium',
                                color: Color.fromRGBO(141, 141, 141, 1)),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
