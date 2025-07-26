import 'package:flutter/material.dart';

void main() {
  runApp(Instagram());
}

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFFFFFF)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          elevation: 0,
          toolbarHeight: 170.0,
          title: Text("Instagram", style: TextStyle(fontWeight: FontWeight.w600),),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 9.0),
              child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.heart_broken,
                  size: 25,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 7.0),
              child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.share_location_rounded,
                  size: 25,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: .3,
                    color: Colors.black12,
                  ),
                ),
              ),
              height: 120.0,
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              index == 0
                                  ? Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
                                    width: 90.0,
                                    height: 90.0,
                                    child: Container(
                                      width: 90.0,
                                      
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black12,
                                        border: Border.all(color: Colors.white, width: 1),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          'https://static.vecteezy.com/system/resources/previews/020/911/736/original/profile-icon-user-icon-person-icon-free-png.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Your Story',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w100, fontSize: 12),
                                  ),
                                ],
                              )
                                  : Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
                                    width: 90.0,
                                    height: 90.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 3, color: Colors.pink),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Container(
                                      width: 90.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.deepPurpleAccent,
                                        border: Border.all(color: Colors.white, width: 3),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          index == 1
                                              ? '../assets/images/rs_1200x1200-220421154259-1200-cristiano-ronaldo-baby-girl.png'
                                              : '../assets/images/Real-Madrid-LOGO-2.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    index == 1
                                        ? 'cristiano'
                                        : 'realmadrid',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w100, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        index == 0
                            ? new Container(
                          child: Positioned(
                            right: 8.0,
                            bottom: 23.0,
                            child: Container(
                              child: CircleAvatar(
                                radius: 13.0,
                                backgroundColor: Colors.blue,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 13,
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Colors.white),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        )
                        : new Container(),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.pink, width: 1.5),
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              width: 35.0,
                              height: 35.0,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 2),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    '../assets/images/1712429153734.jpg',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'm.azizi1371',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded, color: Colors.black,))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image.network(
                        '../assets/images/1712429153734.jpg',
                        fit: BoxFit.cover,
                        height: 450
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 0, 0, 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.favorite_outline_rounded,
                              color: Colors.black,
                              size: 26.0,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0,),
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.comment_rounded,
                                color: Colors.black,
                                size: 26.0,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.next_plan,
                              color: Colors.black,
                              size: 26.0,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.bookmark_border, color: Colors.black, size: 26.0,),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 0, 0, 3.0),
                  child: Row(
                    children: [
                      Container(
                        width: 22.0,
                        height: 22.0,
                        margin: EdgeInsets.only(right: 10.0, left: 10.0,),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              '../assets/images/rs_1200x1200-220421154259-1200-cristiano-ronaldo-baby-girl.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 15,),
                          text: 'Liked by', // default text style
                          children: <TextSpan>[
                            TextSpan(text: ' cristiano', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' and '),
                            TextSpan(text: '4,897,241 others', style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0,  0, 2.0),
                  child: Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'leomessi', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: " Back to wining ways... Let's go team!!",),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0,),
                  child: Row(
                    children: [
                      Text(
                        'View all 354,984 comments',
                        style: TextStyle(color: Colors.black54,),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0,  0, 10.0),
                  child: Row(
                    children: [
                      Text(
                        '12 hours ago',
                        style: TextStyle(color: Colors.black54, fontSize: 13.0),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
